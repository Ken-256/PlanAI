import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plan_ai/features/schedule/domain/models/daily_schedule.dart';

part 'schedule_state.freezed.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState.initial() = Initial;
  const factory ScheduleState.loading() = Loading;
  const factory ScheduleState.loaded(List<DailySchedule> schedule) = Loaded;
  const factory ScheduleState.saved() = Saved;
  const factory ScheduleState.error(String message) = Error;
} 