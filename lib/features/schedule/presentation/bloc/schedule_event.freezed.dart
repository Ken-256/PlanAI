// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SchedulePreferences preferences) generateSchedule,
    required TResult Function(List<DailySchedule> schedule) saveSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SchedulePreferences preferences)? generateSchedule,
    TResult? Function(List<DailySchedule> schedule)? saveSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SchedulePreferences preferences)? generateSchedule,
    TResult Function(List<DailySchedule> schedule)? saveSchedule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateSchedule value) generateSchedule,
    required TResult Function(SaveSchedule value) saveSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateSchedule value)? generateSchedule,
    TResult? Function(SaveSchedule value)? saveSchedule,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateSchedule value)? generateSchedule,
    TResult Function(SaveSchedule value)? saveSchedule,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEventCopyWith<$Res> {
  factory $ScheduleEventCopyWith(
          ScheduleEvent value, $Res Function(ScheduleEvent) then) =
      _$ScheduleEventCopyWithImpl<$Res, ScheduleEvent>;
}

/// @nodoc
class _$ScheduleEventCopyWithImpl<$Res, $Val extends ScheduleEvent>
    implements $ScheduleEventCopyWith<$Res> {
  _$ScheduleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GenerateScheduleImplCopyWith<$Res> {
  factory _$$GenerateScheduleImplCopyWith(_$GenerateScheduleImpl value,
          $Res Function(_$GenerateScheduleImpl) then) =
      __$$GenerateScheduleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SchedulePreferences preferences});

  $SchedulePreferencesCopyWith<$Res> get preferences;
}

/// @nodoc
class __$$GenerateScheduleImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$GenerateScheduleImpl>
    implements _$$GenerateScheduleImplCopyWith<$Res> {
  __$$GenerateScheduleImplCopyWithImpl(_$GenerateScheduleImpl _value,
      $Res Function(_$GenerateScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preferences = null,
  }) {
    return _then(_$GenerateScheduleImpl(
      null == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as SchedulePreferences,
    ));
  }

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchedulePreferencesCopyWith<$Res> get preferences {
    return $SchedulePreferencesCopyWith<$Res>(_value.preferences, (value) {
      return _then(_value.copyWith(preferences: value));
    });
  }
}

/// @nodoc

class _$GenerateScheduleImpl implements GenerateSchedule {
  const _$GenerateScheduleImpl(this.preferences);

  @override
  final SchedulePreferences preferences;

  @override
  String toString() {
    return 'ScheduleEvent.generateSchedule(preferences: $preferences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateScheduleImpl &&
            (identical(other.preferences, preferences) ||
                other.preferences == preferences));
  }

  @override
  int get hashCode => Object.hash(runtimeType, preferences);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateScheduleImplCopyWith<_$GenerateScheduleImpl> get copyWith =>
      __$$GenerateScheduleImplCopyWithImpl<_$GenerateScheduleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SchedulePreferences preferences) generateSchedule,
    required TResult Function(List<DailySchedule> schedule) saveSchedule,
  }) {
    return generateSchedule(preferences);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SchedulePreferences preferences)? generateSchedule,
    TResult? Function(List<DailySchedule> schedule)? saveSchedule,
  }) {
    return generateSchedule?.call(preferences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SchedulePreferences preferences)? generateSchedule,
    TResult Function(List<DailySchedule> schedule)? saveSchedule,
    required TResult orElse(),
  }) {
    if (generateSchedule != null) {
      return generateSchedule(preferences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateSchedule value) generateSchedule,
    required TResult Function(SaveSchedule value) saveSchedule,
  }) {
    return generateSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateSchedule value)? generateSchedule,
    TResult? Function(SaveSchedule value)? saveSchedule,
  }) {
    return generateSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateSchedule value)? generateSchedule,
    TResult Function(SaveSchedule value)? saveSchedule,
    required TResult orElse(),
  }) {
    if (generateSchedule != null) {
      return generateSchedule(this);
    }
    return orElse();
  }
}

abstract class GenerateSchedule implements ScheduleEvent {
  const factory GenerateSchedule(final SchedulePreferences preferences) =
      _$GenerateScheduleImpl;

  SchedulePreferences get preferences;

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateScheduleImplCopyWith<_$GenerateScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveScheduleImplCopyWith<$Res> {
  factory _$$SaveScheduleImplCopyWith(
          _$SaveScheduleImpl value, $Res Function(_$SaveScheduleImpl) then) =
      __$$SaveScheduleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DailySchedule> schedule});
}

/// @nodoc
class __$$SaveScheduleImplCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res, _$SaveScheduleImpl>
    implements _$$SaveScheduleImplCopyWith<$Res> {
  __$$SaveScheduleImplCopyWithImpl(
      _$SaveScheduleImpl _value, $Res Function(_$SaveScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = null,
  }) {
    return _then(_$SaveScheduleImpl(
      null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<DailySchedule>,
    ));
  }
}

/// @nodoc

class _$SaveScheduleImpl implements SaveSchedule {
  const _$SaveScheduleImpl(final List<DailySchedule> schedule)
      : _schedule = schedule;

  final List<DailySchedule> _schedule;
  @override
  List<DailySchedule> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

  @override
  String toString() {
    return 'ScheduleEvent.saveSchedule(schedule: $schedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveScheduleImpl &&
            const DeepCollectionEquality().equals(other._schedule, _schedule));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_schedule));

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveScheduleImplCopyWith<_$SaveScheduleImpl> get copyWith =>
      __$$SaveScheduleImplCopyWithImpl<_$SaveScheduleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SchedulePreferences preferences) generateSchedule,
    required TResult Function(List<DailySchedule> schedule) saveSchedule,
  }) {
    return saveSchedule(schedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SchedulePreferences preferences)? generateSchedule,
    TResult? Function(List<DailySchedule> schedule)? saveSchedule,
  }) {
    return saveSchedule?.call(schedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SchedulePreferences preferences)? generateSchedule,
    TResult Function(List<DailySchedule> schedule)? saveSchedule,
    required TResult orElse(),
  }) {
    if (saveSchedule != null) {
      return saveSchedule(schedule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateSchedule value) generateSchedule,
    required TResult Function(SaveSchedule value) saveSchedule,
  }) {
    return saveSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateSchedule value)? generateSchedule,
    TResult? Function(SaveSchedule value)? saveSchedule,
  }) {
    return saveSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateSchedule value)? generateSchedule,
    TResult Function(SaveSchedule value)? saveSchedule,
    required TResult orElse(),
  }) {
    if (saveSchedule != null) {
      return saveSchedule(this);
    }
    return orElse();
  }
}

abstract class SaveSchedule implements ScheduleEvent {
  const factory SaveSchedule(final List<DailySchedule> schedule) =
      _$SaveScheduleImpl;

  List<DailySchedule> get schedule;

  /// Create a copy of ScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveScheduleImplCopyWith<_$SaveScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
