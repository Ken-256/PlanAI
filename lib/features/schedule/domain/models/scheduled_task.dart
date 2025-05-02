import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plan_ai/features/tasks/domain/models/task.dart';

part 'scheduled_task.freezed.dart';
part 'scheduled_task.g.dart';

@freezed
class ScheduledTask with _$ScheduledTask {
  const factory ScheduledTask({
    required String taskId,
    required String startTime,
    required String endTime,
    required Task task,
  }) = _ScheduledTask;

  factory ScheduledTask.fromJson(Map<String, dynamic> json) =>
      _$ScheduledTaskFromJson(json);
} 