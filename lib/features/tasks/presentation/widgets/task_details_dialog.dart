import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plan_ai/features/tasks/domain/models/task.dart';
import 'package:plan_ai/features/tasks/domain/models/task_priority.dart';
import 'package:plan_ai/features/tasks/presentation/bloc/task_bloc.dart';

class TaskDetailsDialog extends StatefulWidget {
  final Task task;

  const TaskDetailsDialog({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  State<TaskDetailsDialog> createState() => _TaskDetailsDialogState();
}

class _TaskDetailsDialogState extends State<TaskDetailsDialog> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;
  late TextEditingController _durationController;
  late DateTime _dueDate;
  late String _priority;
  late bool _isCompleted;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.task.title);
    _descriptionController = TextEditingController(text: widget.task.description);
    _durationController = TextEditingController(text: widget.task.estimatedDurationMinutes.toString());
    _dueDate = widget.task.dueDate;
    _priority = widget.task.priority.toString();
    _isCompleted = widget.task.isCompleted;
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _durationController.dispose();
    super.dispose();
  }

  void _updateTask() {
    final updatedTask = widget.task.copyWith(
      title: _titleController.text,
      description: _descriptionController.text,
      estimatedDurationMinutes: int.tryParse(_durationController.text) ?? widget.task.estimatedDurationMinutes,
      dueDate: _dueDate,
      priority: TaskPriority.values[int.parse(_priority)],
      isCompleted: _isCompleted,
      completedAt: _isCompleted ? DateTime.now() : null,
    );

    context.read<TaskBloc>().add(TaskEvent.updateTask(updatedTask));
    Navigator.of(context).pop();
  }

  void _deleteTask() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Task'),
        content: const Text('Are you sure you want to delete this task?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              context.read<TaskBloc>().add(TaskEvent.deleteTask(widget.task.id));
              Navigator.of(context).pop(); // Close confirmation dialog
              Navigator.of(context).pop(); // Close task details dialog
            },
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.task.title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Description: ${widget.task.description}'),
          const SizedBox(height: 8),
          Text('Duration: ${widget.task.estimatedDurationMinutes} minutes'),
          const SizedBox(height: 8),
          Text('Due Date: ${widget.task.dueDate.toString().split(' ')[0]}'),
          const SizedBox(height: 8),
          Text('Priority: ${widget.task.priority.toString().split('.').last}'),
          const SizedBox(height: 8),
          Text('Status: ${widget.task.isCompleted ? 'Completed' : 'Pending'}'),
          if (widget.task.completedAt != null) ...[
            const SizedBox(height: 8),
            Text('Completed At: ${widget.task.completedAt.toString().split(' ')[0]}'),
          ],
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Close'),
        ),
        TextButton(
          onPressed: _deleteTask,
          child: const Text('Delete'),
        ),
        TextButton(
          onPressed: _updateTask,
          child: const Text('Save'),
        ),
      ],
    );
  }
} 