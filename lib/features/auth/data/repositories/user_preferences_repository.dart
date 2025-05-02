import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:plan_ai/features/auth/domain/models/user_preferences.dart';

class UserPreferencesRepository {
  final SupabaseClient _supabaseClient;

  UserPreferencesRepository(this._supabaseClient);

  Future<UserPreferences?> getUserPreferences(String userId) async {
    final response = await _supabaseClient
        .from('user_preferences')
        .select()
        .eq('user_id', userId)
        .single();

    if (response == null) return null;
    return UserPreferences.fromJson(response);
  }

  Future<UserPreferences> createUserPreferences(UserPreferences preferences) async {
    final response = await _supabaseClient
        .from('user_preferences')
        .insert(preferences.toJson())
        .select()
        .single();

    return UserPreferences.fromJson(response);
  }

  Future<UserPreferences> updateUserPreferences(UserPreferences preferences) async {
    final response = await _supabaseClient
        .from('user_preferences')
        .update(preferences.toJson())
        .eq('user_id', preferences.userId)
        .select()
        .single();

    return UserPreferences.fromJson(response);
  }
} 