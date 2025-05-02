import 'package:flutter/material.dart';
import 'package:plan_ai/features/tasks/domain/models/task.dart';
import 'package:intl/intl.dart';

class TaskSummary extends StatelessWidget {
  final List<Task> tasks;
  final DateTime selectedDate;

  const TaskSummary({
    super.key,
    required this.tasks,
    required this.selectedDate,
  });

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final isToday = selectedDate.year == today.year &&
        selectedDate.month == today.month &&
        selectedDate.day == today.day;

    final dateTasks = tasks.where((task) {
      final taskDate = task.dueDate;
      return taskDate.year == selectedDate.year &&
          taskDate.month == selectedDate.month &&
          taskDate.day == selectedDate.day;
    }).toList();

    final completedTasks = dateTasks.where((task) => task.isCompleted).length;
    final totalDuration = dateTasks.fold(
      const Duration(),
      (sum, task) => sum + Duration(minutes: task.estimatedDurationMinutes),
    );

    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              isToday ? "Today's Summary" : DateFormat('MMMM d, y').format(selectedDate),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _SummaryItem(
                  icon: Icons.task,
                  value: dateTasks.isEmpty ? '0' : dateTasks.length.toString(),
                  label: 'Tasks',
                ),
                _SummaryItem(
                  icon: Icons.check_circle,
                  value: dateTasks.isEmpty ? '0/0' : '$completedTasks/${dateTasks.length}',
                  label: 'Completed',
                ),
                _SummaryItem(
                  icon: Icons.timer,
                  value: dateTasks.isEmpty ? '0h 0m' : '${totalDuration.inHours}h ${totalDuration.inMinutes % 60}m',
                  label: 'Duration',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _SummaryItem extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

  const _SummaryItem({
    required this.icon,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 24),
        const SizedBox(height: 8),
        Text(
          value,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
} 