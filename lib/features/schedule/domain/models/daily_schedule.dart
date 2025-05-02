import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plan_ai/features/schedule/domain/models/scheduled_task.dart';

part 'daily_schedule.freezed.dart';
part 'daily_schedule.g.dart';

@freezed
class DailySchedule with _$DailySchedule {
  const factory DailySchedule({
    required String date,
    required List<ScheduledTask> tasks,
    required String summary,
  }) = _DailySchedule;

  factory DailySchedule.fromJson(Map<String, dynamic> json) =>
      _$DailyScheduleFromJson(json);
}

@freezed
class TimeSlot with _$TimeSlot {
  const factory TimeSlot({
    required String time,
    required String? taskId,
    required String? title,
    required int? duration,
  }) = _TimeSlot;

  factory TimeSlot.fromJson(Map<String, dynamic> json) =>
      _$TimeSlotFromJson(json);
} 