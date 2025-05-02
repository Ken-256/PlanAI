import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plan_ai/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:plan_ai/features/tasks/domain/models/task.dart';
import 'package:plan_ai/features/tasks/presentation/bloc/task_bloc.dart';
import 'package:plan_ai/features/tasks/presentation/pages/task_form_page.dart';
import 'package:plan_ai/features/tasks/presentation/widgets/task_details_dialog.dart';
import 'package:plan_ai/features/home/presentation/widgets/task_summary.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  Map<DateTime, List<Task>> _tasksByDate = {};
  List<Task> _allTasks = [];

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadTasks();
    });
  }

  void _loadTasks() {
    final userId = Supabase.instance.client.auth.currentUser?.id;
    if (userId == null) {
      context.read<AuthBloc>().add(const AuthEvent.signOut());
      return;
    }
    context.read<TaskBloc>().add(TaskEvent.loadTasks(userId));
  }

  List<Task> _getTasksForDay(DateTime day) {
    final date = DateTime(day.year, day.month, day.day);
    return _tasksByDate[date] ?? [];
  }

  void _updateTasksByDate(List<Task> tasks) {
    _allTasks = tasks;
    _tasksByDate = {};
    for (var task in tasks) {
      final date = DateTime(
        task.dueDate.year,
        task.dueDate.month,
        task.dueDate.day,
      );
      if (!_tasksByDate.containsKey(date)) {
        _tasksByDate[date] = [];
      }
      _tasksByDate[date]!.add(task);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PlanAI'),
        actions: [
          IconButton(
            icon: const Icon(Icons.calendar_today),
            onPressed: () {
              Navigator.pushNamed(context, '/schedule');
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.signOut());
            },
          ),
        ],
      ),
      body: BlocBuilder<TaskBloc, TaskState>(
        builder: (context, state) {
          state.maybeWhen(
            loaded: (tasks) {
              _updateTasksByDate(tasks);
            },
            orElse: () {},
          );

          return SingleChildScrollView(
            child: Column(
              children: [
                state.maybeWhen(
                  loaded: (tasks) => TaskSummary(
                    tasks: tasks,
                    selectedDate: _selectedDay ?? DateTime.now(),
                  ),
                  error: (message) => Center(child: Text('Error: $message')),
                  orElse: () => const Center(child: CircularProgressIndicator()),
                ),
                TableCalendar(
                  firstDay: DateTime.utc(2020, 1, 1),
                  lastDay: DateTime.utc(2030, 12, 31),
                  focusedDay: _focusedDay,
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  },
                  eventLoader: _getTasksForDay,
                  calendarFormat: CalendarFormat.month,
                  calendarStyle: const CalendarStyle(
                    outsideDaysVisible: false,
                    markersMaxCount: 1,
                    markerDecoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                  headerStyle: const HeaderStyle(
                    formatButtonVisible: false,
                  ),
                ),
                const Divider(),
                state.maybeWhen(
                  loaded: (tasks) {
                    final selectedTasks = _selectedDay != null
                        ? _getTasksForDay(_selectedDay!)
                        : _getTasksForDay(DateTime.now());
                    
                    if (selectedTasks.isEmpty) {
                      return const Center(child: Text('No tasks for this day'));
                    }

                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: selectedTasks.length,
                      itemBuilder: (context, index) {
                        final task = selectedTasks[index];
                        return ListTile(
                          title: Text(task.title),
                          subtitle: Text(task.description ?? ''),
                          trailing: Text('${task.estimatedDurationMinutes} min'),
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => TaskDetailsDialog(task: task),
                            );
                          },
                        );
                      },
                    );
                  },
                  error: (message) {
                    return Center(child: Text('Error: $message'));
                  },
                  orElse: () => const Center(child: CircularProgressIndicator()),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TaskFormPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
} 