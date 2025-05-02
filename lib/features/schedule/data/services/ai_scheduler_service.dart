import 'package:dio/dio.dart';
import 'package:plan_ai/features/schedule/domain/models/schedule_preferences.dart';
import 'package:plan_ai/features/schedule/domain/models/daily_schedule.dart';

class AISchedulerService {
  final String _apiKey;
  final Dio _dio;

  AISchedulerService(this._apiKey) : _dio = Dio() {
    _dio.options.headers = {
      'Authorization': 'Bearer $_apiKey',
      'Content-Type': 'application/json',
    };
  }

  Future<List<DailySchedule>> generateSchedule(SchedulePreferences preferences) async {
    final prompt = '''
Generate a daily schedule based on the following preferences:
- Work hours: ${preferences.workStartTime.hour}:${preferences.workStartTime.minute.toString().padLeft(2, '0')} to ${preferences.workEndTime.hour}:${preferences.workEndTime.minute.toString().padLeft(2, '0')}
- Sleep hours: ${preferences.sleepStartTime.hour}:${preferences.sleepStartTime.minute.toString().padLeft(2, '0')} to ${preferences.sleepEndTime.hour}:${preferences.sleepEndTime.minute.toString().padLeft(2, '0')}
- Include weekends: ${preferences.isWeekendIncluded ? 'Yes' : 'No'}

Please create a schedule that:
1. Respects work and sleep hours
2. Includes time for meals and breaks
3. Optimizes productivity
4. Maintains work-life balance

Format the schedule as a JSON array of daily schedules with time slots and activities.
''';

    try {
      final response = await _dio.post(
        'https://api.openai.com/v1/chat/completions',
        data: {
          'model': 'gpt-4',
          'messages': [
            {
              'role': 'system',
              'content': 'You are a professional schedule planner. Create detailed daily schedules based on user preferences.',
            },
            {
              'role': 'user',
              'content': prompt,
            },
          ],
        },
      );

      // Parse the response and convert it to a list of DailySchedule objects
      final scheduleJson = response.data['choices'][0]['message']['content'];
      // TODO: Implement proper JSON parsing
      return [];
    } catch (e) {
      throw Exception('Failed to generate schedule: ${e.toString()}');
    }
  }
} 