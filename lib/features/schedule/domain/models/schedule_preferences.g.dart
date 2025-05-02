// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SchedulePreferencesImpl _$$SchedulePreferencesImplFromJson(
        Map<String, dynamic> json) =>
    _$SchedulePreferencesImpl(
      workStartTime: _timeFromJson(json['workStartTime'] as String),
      workEndTime: _timeFromJson(json['workEndTime'] as String),
      sleepStartTime: _timeFromJson(json['sleepStartTime'] as String),
      sleepEndTime: _timeFromJson(json['sleepEndTime'] as String),
      isWeekendIncluded: json['isWeekendIncluded'] as bool? ?? false,
    );

Map<String, dynamic> _$$SchedulePreferencesImplToJson(
        _$SchedulePreferencesImpl instance) =>
    <String, dynamic>{
      'workStartTime': _timeToJson(instance.workStartTime),
      'workEndTime': _timeToJson(instance.workEndTime),
      'sleepStartTime': _timeToJson(instance.sleepStartTime),
      'sleepEndTime': _timeToJson(instance.sleepEndTime),
      'isWeekendIncluded': instance.isWeekendIncluded,
    };
