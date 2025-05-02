// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preferences_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserPreferencesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadPreferences,
    required TResult Function(UserPreferences preferences) updatePreferences,
    required TResult Function(UserPreferences preferences) createPreferences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadPreferences,
    TResult? Function(UserPreferences preferences)? updatePreferences,
    TResult? Function(UserPreferences preferences)? createPreferences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadPreferences,
    TResult Function(UserPreferences preferences)? updatePreferences,
    TResult Function(UserPreferences preferences)? createPreferences,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPreferences value) loadPreferences,
    required TResult Function(_UpdatePreferences value) updatePreferences,
    required TResult Function(_CreatePreferences value) createPreferences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadPreferences value)? loadPreferences,
    TResult? Function(_UpdatePreferences value)? updatePreferences,
    TResult? Function(_CreatePreferences value)? createPreferences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPreferences value)? loadPreferences,
    TResult Function(_UpdatePreferences value)? updatePreferences,
    TResult Function(_CreatePreferences value)? createPreferences,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPreferencesEventCopyWith<$Res> {
  factory $UserPreferencesEventCopyWith(UserPreferencesEvent value,
          $Res Function(UserPreferencesEvent) then) =
      _$UserPreferencesEventCopyWithImpl<$Res, UserPreferencesEvent>;
}

/// @nodoc
class _$UserPreferencesEventCopyWithImpl<$Res,
        $Val extends UserPreferencesEvent>
    implements $UserPreferencesEventCopyWith<$Res> {
  _$UserPreferencesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadPreferencesImplCopyWith<$Res> {
  factory _$$LoadPreferencesImplCopyWith(_$LoadPreferencesImpl value,
          $Res Function(_$LoadPreferencesImpl) then) =
      __$$LoadPreferencesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$LoadPreferencesImplCopyWithImpl<$Res>
    extends _$UserPreferencesEventCopyWithImpl<$Res, _$LoadPreferencesImpl>
    implements _$$LoadPreferencesImplCopyWith<$Res> {
  __$$LoadPreferencesImplCopyWithImpl(
      _$LoadPreferencesImpl _value, $Res Function(_$LoadPreferencesImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$LoadPreferencesImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadPreferencesImpl implements _LoadPreferences {
  const _$LoadPreferencesImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'UserPreferencesEvent.loadPreferences(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadPreferencesImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of UserPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadPreferencesImplCopyWith<_$LoadPreferencesImpl> get copyWith =>
      __$$LoadPreferencesImplCopyWithImpl<_$LoadPreferencesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadPreferences,
    required TResult Function(UserPreferences preferences) updatePreferences,
    required TResult Function(UserPreferences preferences) createPreferences,
  }) {
    return loadPreferences(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadPreferences,
    TResult? Function(UserPreferences preferences)? updatePreferences,
    TResult? Function(UserPreferences preferences)? createPreferences,
  }) {
    return loadPreferences?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadPreferences,
    TResult Function(UserPreferences preferences)? updatePreferences,
    TResult Function(UserPreferences preferences)? createPreferences,
    required TResult orElse(),
  }) {
    if (loadPreferences != null) {
      return loadPreferences(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPreferences value) loadPreferences,
    required TResult Function(_UpdatePreferences value) updatePreferences,
    required TResult Function(_CreatePreferences value) createPreferences,
  }) {
    return loadPreferences(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadPreferences value)? loadPreferences,
    TResult? Function(_UpdatePreferences value)? updatePreferences,
    TResult? Function(_CreatePreferences value)? createPreferences,
  }) {
    return loadPreferences?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPreferences value)? loadPreferences,
    TResult Function(_UpdatePreferences value)? updatePreferences,
    TResult Function(_CreatePreferences value)? createPreferences,
    required TResult orElse(),
  }) {
    if (loadPreferences != null) {
      return loadPreferences(this);
    }
    return orElse();
  }
}

abstract class _LoadPreferences implements UserPreferencesEvent {
  const factory _LoadPreferences(final String userId) = _$LoadPreferencesImpl;

  String get userId;

  /// Create a copy of UserPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadPreferencesImplCopyWith<_$LoadPreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePreferencesImplCopyWith<$Res> {
  factory _$$UpdatePreferencesImplCopyWith(_$UpdatePreferencesImpl value,
          $Res Function(_$UpdatePreferencesImpl) then) =
      __$$UpdatePreferencesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserPreferences preferences});

  $UserPreferencesCopyWith<$Res> get preferences;
}

/// @nodoc
class __$$UpdatePreferencesImplCopyWithImpl<$Res>
    extends _$UserPreferencesEventCopyWithImpl<$Res, _$UpdatePreferencesImpl>
    implements _$$UpdatePreferencesImplCopyWith<$Res> {
  __$$UpdatePreferencesImplCopyWithImpl(_$UpdatePreferencesImpl _value,
      $Res Function(_$UpdatePreferencesImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preferences = null,
  }) {
    return _then(_$UpdatePreferencesImpl(
      null == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as UserPreferences,
    ));
  }

  /// Create a copy of UserPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserPreferencesCopyWith<$Res> get preferences {
    return $UserPreferencesCopyWith<$Res>(_value.preferences, (value) {
      return _then(_value.copyWith(preferences: value));
    });
  }
}

/// @nodoc

class _$UpdatePreferencesImpl implements _UpdatePreferences {
  const _$UpdatePreferencesImpl(this.preferences);

  @override
  final UserPreferences preferences;

  @override
  String toString() {
    return 'UserPreferencesEvent.updatePreferences(preferences: $preferences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePreferencesImpl &&
            (identical(other.preferences, preferences) ||
                other.preferences == preferences));
  }

  @override
  int get hashCode => Object.hash(runtimeType, preferences);

  /// Create a copy of UserPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePreferencesImplCopyWith<_$UpdatePreferencesImpl> get copyWith =>
      __$$UpdatePreferencesImplCopyWithImpl<_$UpdatePreferencesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadPreferences,
    required TResult Function(UserPreferences preferences) updatePreferences,
    required TResult Function(UserPreferences preferences) createPreferences,
  }) {
    return updatePreferences(preferences);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadPreferences,
    TResult? Function(UserPreferences preferences)? updatePreferences,
    TResult? Function(UserPreferences preferences)? createPreferences,
  }) {
    return updatePreferences?.call(preferences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadPreferences,
    TResult Function(UserPreferences preferences)? updatePreferences,
    TResult Function(UserPreferences preferences)? createPreferences,
    required TResult orElse(),
  }) {
    if (updatePreferences != null) {
      return updatePreferences(preferences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPreferences value) loadPreferences,
    required TResult Function(_UpdatePreferences value) updatePreferences,
    required TResult Function(_CreatePreferences value) createPreferences,
  }) {
    return updatePreferences(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadPreferences value)? loadPreferences,
    TResult? Function(_UpdatePreferences value)? updatePreferences,
    TResult? Function(_CreatePreferences value)? createPreferences,
  }) {
    return updatePreferences?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPreferences value)? loadPreferences,
    TResult Function(_UpdatePreferences value)? updatePreferences,
    TResult Function(_CreatePreferences value)? createPreferences,
    required TResult orElse(),
  }) {
    if (updatePreferences != null) {
      return updatePreferences(this);
    }
    return orElse();
  }
}

abstract class _UpdatePreferences implements UserPreferencesEvent {
  const factory _UpdatePreferences(final UserPreferences preferences) =
      _$UpdatePreferencesImpl;

  UserPreferences get preferences;

  /// Create a copy of UserPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePreferencesImplCopyWith<_$UpdatePreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatePreferencesImplCopyWith<$Res> {
  factory _$$CreatePreferencesImplCopyWith(_$CreatePreferencesImpl value,
          $Res Function(_$CreatePreferencesImpl) then) =
      __$$CreatePreferencesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserPreferences preferences});

  $UserPreferencesCopyWith<$Res> get preferences;
}

/// @nodoc
class __$$CreatePreferencesImplCopyWithImpl<$Res>
    extends _$UserPreferencesEventCopyWithImpl<$Res, _$CreatePreferencesImpl>
    implements _$$CreatePreferencesImplCopyWith<$Res> {
  __$$CreatePreferencesImplCopyWithImpl(_$CreatePreferencesImpl _value,
      $Res Function(_$CreatePreferencesImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preferences = null,
  }) {
    return _then(_$CreatePreferencesImpl(
      null == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as UserPreferences,
    ));
  }

  /// Create a copy of UserPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserPreferencesCopyWith<$Res> get preferences {
    return $UserPreferencesCopyWith<$Res>(_value.preferences, (value) {
      return _then(_value.copyWith(preferences: value));
    });
  }
}

/// @nodoc

class _$CreatePreferencesImpl implements _CreatePreferences {
  const _$CreatePreferencesImpl(this.preferences);

  @override
  final UserPreferences preferences;

  @override
  String toString() {
    return 'UserPreferencesEvent.createPreferences(preferences: $preferences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePreferencesImpl &&
            (identical(other.preferences, preferences) ||
                other.preferences == preferences));
  }

  @override
  int get hashCode => Object.hash(runtimeType, preferences);

  /// Create a copy of UserPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePreferencesImplCopyWith<_$CreatePreferencesImpl> get copyWith =>
      __$$CreatePreferencesImplCopyWithImpl<_$CreatePreferencesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadPreferences,
    required TResult Function(UserPreferences preferences) updatePreferences,
    required TResult Function(UserPreferences preferences) createPreferences,
  }) {
    return createPreferences(preferences);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadPreferences,
    TResult? Function(UserPreferences preferences)? updatePreferences,
    TResult? Function(UserPreferences preferences)? createPreferences,
  }) {
    return createPreferences?.call(preferences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadPreferences,
    TResult Function(UserPreferences preferences)? updatePreferences,
    TResult Function(UserPreferences preferences)? createPreferences,
    required TResult orElse(),
  }) {
    if (createPreferences != null) {
      return createPreferences(preferences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPreferences value) loadPreferences,
    required TResult Function(_UpdatePreferences value) updatePreferences,
    required TResult Function(_CreatePreferences value) createPreferences,
  }) {
    return createPreferences(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadPreferences value)? loadPreferences,
    TResult? Function(_UpdatePreferences value)? updatePreferences,
    TResult? Function(_CreatePreferences value)? createPreferences,
  }) {
    return createPreferences?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPreferences value)? loadPreferences,
    TResult Function(_UpdatePreferences value)? updatePreferences,
    TResult Function(_CreatePreferences value)? createPreferences,
    required TResult orElse(),
  }) {
    if (createPreferences != null) {
      return createPreferences(this);
    }
    return orElse();
  }
}

abstract class _CreatePreferences implements UserPreferencesEvent {
  const factory _CreatePreferences(final UserPreferences preferences) =
      _$CreatePreferencesImpl;

  UserPreferences get preferences;

  /// Create a copy of UserPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatePreferencesImplCopyWith<_$CreatePreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
