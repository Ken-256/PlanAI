// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyScheduleImpl _$$DailyScheduleImplFromJson(Map<String, dynamic> json) =>
    _$DailyScheduleImpl(
      date: json['date'] as String,
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => ScheduledTask.fromJson(e as Map<String, dynamic>))
          .toList(),
      summary: json['summary'] as String,
    );

Map<String, dynamic> _$$DailyScheduleImplToJson(_$DailyScheduleImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'tasks': instance.tasks,
      'summary': instance.summary,
    };

_$TimeSlotImpl _$$TimeSlotImplFromJson(Map<String, dynamic> json) =>
    _$TimeSlotImpl(
      time: json['time'] as String,
      taskId: json['taskId'] as String?,
      title: json['title'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TimeSlotImplToJson(_$TimeSlotImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'taskId': instance.taskId,
      'title': instance.title,
      'duration': instance.duration,
    };
