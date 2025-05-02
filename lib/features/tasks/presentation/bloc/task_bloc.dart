import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plan_ai/features/tasks/domain/models/task.dart';
import 'package:plan_ai/features/tasks/domain/repositories/task_repository.dart';

part 'task_bloc.freezed.dart';
part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TaskRepository _taskRepository;

  TaskBloc(this._taskRepository) : super(const TaskState.initial()) {
    on<TaskEvent>((event, emit) async {
      await event.map(
        loadTasks: (e) => _handleLoadTasks(e, emit),
        createTask: (e) => _handleCreateTask(e, emit),
        updateTask: (e) => _handleUpdateTask(e, emit),
        deleteTask: (e) => _handleDeleteTask(e, emit),
      );
    });
  }

  Future<void> _handleLoadTasks(_LoadTasks event, Emitter<TaskState> emit) async {
    try {
      final tasks = await _taskRepository.getTasks(event.userId);
      emit(TaskState.loaded(tasks));
    } catch (e) {
      emit(TaskState.error(e.toString()));
    }
  }

  Future<void> _handleCreateTask(_CreateTask event, Emitter<TaskState> emit) async {
    try {
      final task = await _taskRepository.createTask(event.task);
      final currentState = state;
      if (currentState is _Loaded) {
        emit(TaskState.loaded([...currentState.tasks, task]));
      } else {
        final tasks = await _taskRepository.getTasks(task.userId);
        emit(TaskState.loaded(tasks));
      }
    } catch (e) {
      emit(TaskState.error(e.toString()));
    }
  }

  Future<void> _handleUpdateTask(_UpdateTask event, Emitter<TaskState> emit) async {
    try {
      final updatedTask = await _taskRepository.updateTask(event.task);
      final currentState = state;
      if (currentState is _Loaded) {
        final tasks = currentState.tasks.map((t) => t.id == updatedTask.id ? updatedTask : t).toList();
        emit(TaskState.loaded(tasks));
      } else {
        // If we're not in a loaded state, just load all tasks again
        final tasks = await _taskRepository.getTasks(updatedTask.userId);
        emit(TaskState.loaded(tasks));
      }
    } catch (e) {
      emit(TaskState.error(e.toString()));
    }
  }

  Future<void> _handleDeleteTask(_DeleteTask event, Emitter<TaskState> emit) async {
    try {
      await _taskRepository.deleteTask(event.taskId);
      final currentState = state;
      if (currentState is _Loaded) {
        final tasks = currentState.tasks.where((t) => t.id != event.taskId).toList();
        emit(TaskState.loaded(tasks));
      }
    } catch (e) {
      emit(TaskState.error(e.toString()));
    }
  }
} 