import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plan_ai/features/tasks/domain/models/task.dart';
import 'package:plan_ai/features/tasks/presentation/bloc/task_bloc.dart';
import 'package:plan_ai/features/tasks/presentation/pages/task_form_page.dart';
import 'package:plan_ai/features/tasks/presentation/widgets/task_details_dialog.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TaskFormPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<TaskBloc, TaskState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (tasks) {
              if (tasks.isEmpty) {
                return const Center(child: Text('No tasks available'));
              }
              return ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  final task = tasks[index];
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
              return Center(child: Text(message));
            },
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
} 