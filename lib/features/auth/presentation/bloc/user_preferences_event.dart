import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plan_ai/features/auth/domain/models/user_preferences.dart';

part 'user_preferences_event.freezed.dart';

@freezed
class UserPreferencesEvent with _$UserPreferencesEvent {
  const factory UserPreferencesEvent.loadPreferences(String userId) = _LoadPreferences;
  const factory UserPreferencesEvent.updatePreferences(UserPreferences preferences) = _UpdatePreferences;
  const factory UserPreferencesEvent.createPreferences(UserPreferences preferences) = _CreatePreferences;
} 