import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'schedule_preferences.freezed.dart';
part 'schedule_preferences.g.dart';

@freezed
class SchedulePreferences with _$SchedulePreferences {
  const factory SchedulePreferences({
    @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson) required TimeOfDay workStartTime,
    @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson) required TimeOfDay workEndTime,
    @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson) required TimeOfDay sleepStartTime,
    @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson) required TimeOfDay sleepEndTime,
    @Default(false) bool isWeekendIncluded,
  }) = _SchedulePreferences;

  factory SchedulePreferences.fromJson(Map<String, dynamic> json) =>
      _$SchedulePreferencesFromJson(json);
}

TimeOfDay _timeFromJson(String json) {
  final parts = json.split(':');
  return TimeOfDay(
    hour: int.parse(parts[0]),
    minute: int.parse(parts[1]),
  );
}

String _timeToJson(TimeOfDay time) => '${time.hour}:${time.minute}'; 