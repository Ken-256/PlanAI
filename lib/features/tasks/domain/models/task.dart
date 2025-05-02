import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plan_ai/features/tasks/domain/models/task_priority.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required String id,
    required String userId,
    required String title,
    required String description,
    required int estimatedDurationMinutes,
    required DateTime dueDate,
    required TaskPriority priority,
    required bool isCompleted,
    DateTime? completedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
} 