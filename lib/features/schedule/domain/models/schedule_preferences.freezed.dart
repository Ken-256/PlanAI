// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SchedulePreferences _$SchedulePreferencesFromJson(Map<String, dynamic> json) {
  return _SchedulePreferences.fromJson(json);
}

/// @nodoc
mixin _$SchedulePreferences {
  @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
  TimeOfDay get workStartTime => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
  TimeOfDay get workEndTime => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
  TimeOfDay get sleepStartTime => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
  TimeOfDay get sleepEndTime => throw _privateConstructorUsedError;
  bool get isWeekendIncluded => throw _privateConstructorUsedError;

  /// Serializes this SchedulePreferences to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SchedulePreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SchedulePreferencesCopyWith<SchedulePreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulePreferencesCopyWith<$Res> {
  factory $SchedulePreferencesCopyWith(
          SchedulePreferences value, $Res Function(SchedulePreferences) then) =
      _$SchedulePreferencesCopyWithImpl<$Res, SchedulePreferences>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
      TimeOfDay workStartTime,
      @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
      TimeOfDay workEndTime,
      @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
      TimeOfDay sleepStartTime,
      @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
      TimeOfDay sleepEndTime,
      bool isWeekendIncluded});
}

/// @nodoc
class _$SchedulePreferencesCopyWithImpl<$Res, $Val extends SchedulePreferences>
    implements $SchedulePreferencesCopyWith<$Res> {
  _$SchedulePreferencesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SchedulePreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workStartTime = null,
    Object? workEndTime = null,
    Object? sleepStartTime = null,
    Object? sleepEndTime = null,
    Object? isWeekendIncluded = null,
  }) {
    return _then(_value.copyWith(
      workStartTime: null == workStartTime
          ? _value.workStartTime
          : workStartTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      workEndTime: null == workEndTime
          ? _value.workEndTime
          : workEndTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      sleepStartTime: null == sleepStartTime
          ? _value.sleepStartTime
          : sleepStartTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      sleepEndTime: null == sleepEndTime
          ? _value.sleepEndTime
          : sleepEndTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      isWeekendIncluded: null == isWeekendIncluded
          ? _value.isWeekendIncluded
          : isWeekendIncluded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchedulePreferencesImplCopyWith<$Res>
    implements $SchedulePreferencesCopyWith<$Res> {
  factory _$$SchedulePreferencesImplCopyWith(_$SchedulePreferencesImpl value,
          $Res Function(_$SchedulePreferencesImpl) then) =
      __$$SchedulePreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
      TimeOfDay workStartTime,
      @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
      TimeOfDay workEndTime,
      @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
      TimeOfDay sleepStartTime,
      @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
      TimeOfDay sleepEndTime,
      bool isWeekendIncluded});
}

/// @nodoc
class __$$SchedulePreferencesImplCopyWithImpl<$Res>
    extends _$SchedulePreferencesCopyWithImpl<$Res, _$SchedulePreferencesImpl>
    implements _$$SchedulePreferencesImplCopyWith<$Res> {
  __$$SchedulePreferencesImplCopyWithImpl(_$SchedulePreferencesImpl _value,
      $Res Function(_$SchedulePreferencesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchedulePreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workStartTime = null,
    Object? workEndTime = null,
    Object? sleepStartTime = null,
    Object? sleepEndTime = null,
    Object? isWeekendIncluded = null,
  }) {
    return _then(_$SchedulePreferencesImpl(
      workStartTime: null == workStartTime
          ? _value.workStartTime
          : workStartTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      workEndTime: null == workEndTime
          ? _value.workEndTime
          : workEndTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      sleepStartTime: null == sleepStartTime
          ? _value.sleepStartTime
          : sleepStartTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      sleepEndTime: null == sleepEndTime
          ? _value.sleepEndTime
          : sleepEndTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      isWeekendIncluded: null == isWeekendIncluded
          ? _value.isWeekendIncluded
          : isWeekendIncluded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchedulePreferencesImpl implements _SchedulePreferences {
  const _$SchedulePreferencesImpl(
      {@JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
      required this.workStartTime,
      @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
      required this.workEndTime,
      @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
      required this.sleepStartTime,
      @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
      required this.sleepEndTime,
      this.isWeekendIncluded = false});

  factory _$SchedulePreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchedulePreferencesImplFromJson(json);

  @override
  @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
  final TimeOfDay workStartTime;
  @override
  @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
  final TimeOfDay workEndTime;
  @override
  @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
  final TimeOfDay sleepStartTime;
  @override
  @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
  final TimeOfDay sleepEndTime;
  @override
  @JsonKey()
  final bool isWeekendIncluded;

  @override
  String toString() {
    return 'SchedulePreferences(workStartTime: $workStartTime, workEndTime: $workEndTime, sleepStartTime: $sleepStartTime, sleepEndTime: $sleepEndTime, isWeekendIncluded: $isWeekendIncluded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchedulePreferencesImpl &&
            (identical(other.workStartTime, workStartTime) ||
                other.workStartTime == workStartTime) &&
            (identical(other.workEndTime, workEndTime) ||
                other.workEndTime == workEndTime) &&
            (identical(other.sleepStartTime, sleepStartTime) ||
                other.sleepStartTime == sleepStartTime) &&
            (identical(other.sleepEndTime, sleepEndTime) ||
                other.sleepEndTime == sleepEndTime) &&
            (identical(other.isWeekendIncluded, isWeekendIncluded) ||
                other.isWeekendIncluded == isWeekendIncluded));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, workStartTime, workEndTime,
      sleepStartTime, sleepEndTime, isWeekendIncluded);

  /// Create a copy of SchedulePreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SchedulePreferencesImplCopyWith<_$SchedulePreferencesImpl> get copyWith =>
      __$$SchedulePreferencesImplCopyWithImpl<_$SchedulePreferencesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchedulePreferencesImplToJson(
      this,
    );
  }
}

abstract class _SchedulePreferences implements SchedulePreferences {
  const factory _SchedulePreferences(
      {@JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
      required final TimeOfDay workStartTime,
      @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
      required final TimeOfDay workEndTime,
      @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
      required final TimeOfDay sleepStartTime,
      @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
      required final TimeOfDay sleepEndTime,
      final bool isWeekendIncluded}) = _$SchedulePreferencesImpl;

  factory _SchedulePreferences.fromJson(Map<String, dynamic> json) =
      _$SchedulePreferencesImpl.fromJson;

  @override
  @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
  TimeOfDay get workStartTime;
  @override
  @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
  TimeOfDay get workEndTime;
  @override
  @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
  TimeOfDay get sleepStartTime;
  @override
  @JsonKey(fromJson: _timeFromJson, toJson: _timeToJson)
  TimeOfDay get sleepEndTime;
  @override
  bool get isWeekendIncluded;

  /// Create a copy of SchedulePreferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SchedulePreferencesImplCopyWith<_$SchedulePreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
