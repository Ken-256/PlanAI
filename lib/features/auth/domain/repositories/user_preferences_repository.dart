import 'package:plan_ai/features/auth/domain/models/user_preferences.dart';
 
abstract class UserPreferencesRepository {
  Future<UserPreferences> getPreferences(String userId);
  Future<UserPreferences> updatePreferences(UserPreferences preferences);
  Future<UserPreferences> createPreferences(UserPreferences preferences);
} 