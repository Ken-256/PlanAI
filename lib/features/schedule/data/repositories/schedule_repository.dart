import 'package:plan_ai/features/schedule/domain/models/daily_schedule.dart';

abstract class ScheduleRepository {
  Future<void> saveSchedule(List<DailySchedule> schedule);
  Future<List<DailySchedule>> getSchedule();
} 