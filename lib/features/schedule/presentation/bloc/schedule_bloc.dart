import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plan_ai/features/schedule/domain/models/schedule_preferences.dart';
import 'package:plan_ai/features/schedule/data/services/local_scheduler_service.dart';
import 'package:plan_ai/features/schedule/domain/models/daily_schedule.dart';
import 'package:plan_ai/features/tasks/domain/models/task.dart';
import 'package:plan_ai/features/schedule/presentation/bloc/schedule_event.dart';
import 'package:plan_ai/features/schedule/presentation/bloc/schedule_state.dart';
import 'package:plan_ai/features/schedule/data/repositories/schedule_repository.dart';

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  final LocalSchedulerService _schedulerService;
  final ScheduleRepository _scheduleRepository;

  ScheduleBloc(this._schedulerService, this._scheduleRepository) : super(const ScheduleState.initial()) {
    on<ScheduleEvent>((event, emit) async {
      await event.map(
        generateSchedule: (event) => _handleGenerateSchedule(event.preferences, emit),
        saveSchedule: (event) => _handleSaveSchedule(event.schedule, emit),
      );
    });
  }

  Future<void> _handleGenerateSchedule(
    SchedulePreferences preferences,
    Emitter<ScheduleState> emit,
  ) async {
    emit(const ScheduleState.loading());
    try {
      final schedule = await _schedulerService.generateSchedule(preferences);
      // Sort schedule by date in descending order (most recent first)
      schedule.sort((a, b) => b.date.compareTo(a.date));
      emit(ScheduleState.loaded(schedule));
    } catch (e) {
      emit(ScheduleState.error(e.toString()));
    }
  }

  Future<void> _handleSaveSchedule(
    List<DailySchedule> schedule,
    Emitter<ScheduleState> emit,
  ) async {
    emit(const ScheduleState.loading());
    try {
      await _scheduleRepository.saveSchedule(schedule);
      emit(const ScheduleState.saved());
    } catch (e) {
      emit(ScheduleState.error(e.toString()));
    }
  }
} 