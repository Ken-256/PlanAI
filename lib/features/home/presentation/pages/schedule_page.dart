import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plan_ai/features/schedule/presentation/bloc/schedule_bloc.dart';
import 'package:plan_ai/features/schedule/presentation/bloc/schedule_event.dart';
import 'package:plan_ai/features/schedule/presentation/bloc/schedule_state.dart';
import 'package:plan_ai/features/tasks/presentation/bloc/task_bloc.dart';
import 'package:plan_ai/features/schedule/domain/models/daily_schedule.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Schedule'),
      ),
      body: BlocBuilder<ScheduleBloc, ScheduleState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const Center(child: Text('No schedule generated yet')),
            loading: (_) => const Center(child: CircularProgressIndicator()),
            loaded: (state) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Schedule for ${state.schedule.length} days',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.schedule.length,
                      itemBuilder: (context, index) {
                        final dailySchedule = state.schedule[index];
                        return Card(
                          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dailySchedule.date.toString(),
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                                const SizedBox(height: 8),
                                ...dailySchedule.tasks.map((task) => ListTile(
                                  title: Text('${task.startTime} - ${task.endTime}'),
                                  subtitle: Text('Task ID: ${task.taskId}'),
                                )),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
            saved: (_) => const Center(
              child: Text(
                'Schedule saved successfully!',
                style: TextStyle(color: Colors.green),
              ),
            ),
            error: (state) => Center(
              child: Text(
                state.message,
                style: const TextStyle(color: Colors.red),
              ),
            ),
          );
        },
      ),
    );
  }
} 