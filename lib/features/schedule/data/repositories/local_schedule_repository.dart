import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:plan_ai/features/schedule/domain/models/daily_schedule.dart';
import 'package:plan_ai/features/schedule/data/repositories/schedule_repository.dart';

class LocalScheduleRepository implements ScheduleRepository {
  final SharedPreferences _prefs;
  static const String _scheduleKey = 'saved_schedule';

  LocalScheduleRepository(this._prefs);

  @override
  Future<void> saveSchedule(List<DailySchedule> schedule) async {
    final jsonSchedule = schedule.map((s) => s.toJson()).toList();
    await _prefs.setString(_scheduleKey, jsonEncode(jsonSchedule));
  }

  @override
  Future<List<DailySchedule>> getSchedule() async {
    final jsonString = _prefs.getString(_scheduleKey);
    if (jsonString == null) return [];

    final jsonList = jsonDecode(jsonString) as List;
    return jsonList.map((json) => DailySchedule.fromJson(json)).toList();
  }
} 