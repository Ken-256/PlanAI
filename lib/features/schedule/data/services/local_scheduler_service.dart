import 'dart:async';
import 'package:flutter/material.dart';
import 'package:plan_ai/features/schedule/domain/models/daily_schedule.dart';
import 'package:plan_ai/features/schedule/domain/models/scheduled_task.dart';
import 'package:plan_ai/features/schedule/domain/models/schedule_preferences.dart';
import 'package:plan_ai/features/tasks/domain/models/task.dart';
import 'package:plan_ai/features/tasks/domain/models/task_priority.dart';
import 'package:plan_ai/features/tasks/presentation/bloc/task_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LocalSchedulerService {
  final TaskBloc _taskBloc;

  LocalSchedulerService(this._taskBloc);

  Future<List<DailySchedule>> generateSchedule(SchedulePreferences preferences) async {
    final schedules = <DailySchedule>[];
    final tasks = await _getTasks();
    
    if (tasks.isEmpty) {
      return schedules;
    }

    // Group tasks by date
    final tasksByDate = <DateTime, List<Task>>{};
    for (final task in tasks) {
      final date = DateTime(
        task.dueDate.year,
        task.dueDate.month,
        task.dueDate.day,
      );
      
      // Skip weekends if not included
      if (!preferences.isWeekendIncluded && (date.weekday == DateTime.saturday || date.weekday == DateTime.sunday)) {
        continue;
      }
      
      tasksByDate.putIfAbsent(date, () => []).add(task);
    }

    // Sort tasks by priority and due time
    for (final date in tasksByDate.keys) {
      final tasksForDate = tasksByDate[date]!;
      tasksForDate.sort((a, b) {
        final priorityCompare = _getPriorityValue(b.priority).compareTo(_getPriorityValue(a.priority));
        if (priorityCompare != 0) return priorityCompare;
        return a.dueDate.compareTo(b.dueDate);
      });

      var currentTime = preferences.workStartTime;
      final scheduledTasks = <ScheduledTask>[];

      for (final task in tasksForDate) {
        if (_isDuringSleepTime(currentTime, preferences)) {
          currentTime = preferences.workStartTime;
        }

        if (currentTime.hour >= preferences.workEndTime.hour) {
          break;
        }

        final endTime = _addMinutes(currentTime, task.estimatedDurationMinutes);
        if (endTime.hour > preferences.workEndTime.hour) {
          break;
        }

        scheduledTasks.add(ScheduledTask(
          taskId: task.id,
          startTime: '${currentTime.hour.toString().padLeft(2, '0')}:${currentTime.minute.toString().padLeft(2, '0')}',
          endTime: '${endTime.hour.toString().padLeft(2, '0')}:${endTime.minute.toString().padLeft(2, '0')}',
          task: task,
        ));
        currentTime = endTime;
      }

      if (scheduledTasks.isNotEmpty) {
        schedules.add(DailySchedule(
          date: '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}',
          tasks: scheduledTasks,
          summary: '${scheduledTasks.length} tasks scheduled',
        ));
      }
    }

    return schedules;
  }

  Future<List<Task>> _getTasks() async {
    final completer = Completer<List<Task>>();
    late StreamSubscription subscription;
    
    final currentState = _taskBloc.state;
    final tasks = currentState.maybeWhen(
      loaded: (tasks) => tasks,
      orElse: () => <Task>[],
    );
    
    if (tasks.isNotEmpty) {
      return tasks;
    }
    
    subscription = _taskBloc.stream.listen((state) {
      state.maybeWhen(
        loaded: (tasks) {
          completer.complete(tasks);
          subscription.cancel();
        },
        error: (message) {
          completer.complete([]);
          subscription.cancel();
        },
        orElse: () {},
      );
    });
    
    final currentUser = Supabase.instance.client.auth.currentUser;
    if (currentUser == null) {
      completer.complete([]);
      return completer.future;
    }
    
    _taskBloc.add(TaskEvent.loadTasks(currentUser.id));
    return completer.future;
  }

  int _getPriorityValue(TaskPriority priority) {
    switch (priority) {
      case TaskPriority.critical:
        return 4;
      case TaskPriority.important:
        return 3;
      case TaskPriority.normal:
        return 2;
      case TaskPriority.low:
        return 1;
    }
  }

  TimeOfDay _addMinutes(TimeOfDay time, int minutes) {
    final totalMinutes = time.hour * 60 + time.minute + minutes;
    return TimeOfDay(
      hour: (totalMinutes ~/ 60) % 24,
      minute: totalMinutes % 60,
    );
  }

  bool _isDuringSleepTime(TimeOfDay time, SchedulePreferences preferences) {
    if (preferences.sleepStartTime.hour <= preferences.sleepEndTime.hour) {
      return time.hour >= preferences.sleepStartTime.hour &&
          time.hour < preferences.sleepEndTime.hour;
    } else {
      return time.hour >= preferences.sleepStartTime.hour ||
          time.hour < preferences.sleepEndTime.hour;
    }
  }
} 