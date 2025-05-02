// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduledTaskImpl _$$ScheduledTaskImplFromJson(Map<String, dynamic> json) =>
    _$ScheduledTaskImpl(
      taskId: json['taskId'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      task: Task.fromJson(json['task'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ScheduledTaskImplToJson(_$ScheduledTaskImpl instance) =>
    <String, dynamic>{
      'taskId': instance.taskId,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'task': instance.task,
    };
