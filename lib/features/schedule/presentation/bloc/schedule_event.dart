import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plan_ai/features/schedule/domain/models/schedule_preferences.dart';
import 'package:plan_ai/features/schedule/domain/models/daily_schedule.dart';

part 'schedule_event.freezed.dart';

@freezed
class ScheduleEvent with _$ScheduleEvent {
  const factory ScheduleEvent.generateSchedule(SchedulePreferences preferences) = GenerateSchedule;
  const factory ScheduleEvent.saveSchedule(List<DailySchedule> schedule) = SaveSchedule;
} 