import 'package:plan_ai/features/auth/domain/models/user_preferences.dart';
import 'package:plan_ai/features/auth/domain/repositories/user_preferences_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserPreferencesRepositoryImpl implements UserPreferencesRepository {
  final SupabaseClient _supabaseClient;

  UserPreferencesRepositoryImpl(this._supabaseClient);

  @override
  Future<UserPreferences> getPreferences(String userId) async {
    final response = await _supabaseClient
        .from('user_preferences')
        .select()
        .eq('user_id', userId)
        .single();
    
    return UserPreferences.fromJson(response);
  }

  @override
  Future<UserPreferences> updatePreferences(UserPreferences preferences) async {
    final response = await _supabaseClient
        .from('user_preferences')
        .update(preferences.toJson())
        .eq('user_id', preferences.userId)
        .select()
        .single();
    
    return UserPreferences.fromJson(response);
  }

  @override
  Future<UserPreferences> createPreferences(UserPreferences preferences) async {
    final response = await _supabaseClient
        .from('user_preferences')
        .insert(preferences.toJson())
        .select()
        .single();
    
    return UserPreferences.fromJson(response);
  }
} 