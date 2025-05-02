// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheduled_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduledTask _$ScheduledTaskFromJson(Map<String, dynamic> json) {
  return _ScheduledTask.fromJson(json);
}

/// @nodoc
mixin _$ScheduledTask {
  String get taskId => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  Task get task => throw _privateConstructorUsedError;

  /// Serializes this ScheduledTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduledTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduledTaskCopyWith<ScheduledTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduledTaskCopyWith<$Res> {
  factory $ScheduledTaskCopyWith(
          ScheduledTask value, $Res Function(ScheduledTask) then) =
      _$ScheduledTaskCopyWithImpl<$Res, ScheduledTask>;
  @useResult
  $Res call({String taskId, String startTime, String endTime, Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class _$ScheduledTaskCopyWithImpl<$Res, $Val extends ScheduledTask>
    implements $ScheduledTaskCopyWith<$Res> {
  _$ScheduledTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduledTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? task = null,
  }) {
    return _then(_value.copyWith(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ) as $Val);
  }

  /// Create a copy of ScheduledTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduledTaskImplCopyWith<$Res>
    implements $ScheduledTaskCopyWith<$Res> {
  factory _$$ScheduledTaskImplCopyWith(
          _$ScheduledTaskImpl value, $Res Function(_$ScheduledTaskImpl) then) =
      __$$ScheduledTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String taskId, String startTime, String endTime, Task task});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$ScheduledTaskImplCopyWithImpl<$Res>
    extends _$ScheduledTaskCopyWithImpl<$Res, _$ScheduledTaskImpl>
    implements _$$ScheduledTaskImplCopyWith<$Res> {
  __$$ScheduledTaskImplCopyWithImpl(
      _$ScheduledTaskImpl _value, $Res Function(_$ScheduledTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduledTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? task = null,
  }) {
    return _then(_$ScheduledTaskImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduledTaskImpl implements _ScheduledTask {
  const _$ScheduledTaskImpl(
      {required this.taskId,
      required this.startTime,
      required this.endTime,
      required this.task});

  factory _$ScheduledTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduledTaskImplFromJson(json);

  @override
  final String taskId;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final Task task;

  @override
  String toString() {
    return 'ScheduledTask(taskId: $taskId, startTime: $startTime, endTime: $endTime, task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduledTaskImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.task, task) || other.task == task));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, taskId, startTime, endTime, task);

  /// Create a copy of ScheduledTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduledTaskImplCopyWith<_$ScheduledTaskImpl> get copyWith =>
      __$$ScheduledTaskImplCopyWithImpl<_$ScheduledTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduledTaskImplToJson(
      this,
    );
  }
}

abstract class _ScheduledTask implements ScheduledTask {
  const factory _ScheduledTask(
      {required final String taskId,
      required final String startTime,
      required final String endTime,
      required final Task task}) = _$ScheduledTaskImpl;

  factory _ScheduledTask.fromJson(Map<String, dynamic> json) =
      _$ScheduledTaskImpl.fromJson;

  @override
  String get taskId;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  Task get task;

  /// Create a copy of ScheduledTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduledTaskImplCopyWith<_$ScheduledTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
