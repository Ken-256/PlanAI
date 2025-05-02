import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plan_ai/features/auth/domain/repositories/user_preferences_repository.dart';
import 'user_preferences_event.dart';
import 'user_preferences_state.dart';

class UserPreferencesBloc extends Bloc<UserPreferencesEvent, UserPreferencesState> {
  final UserPreferencesRepository _repository;

  UserPreferencesBloc(this._repository) : super(const UserPreferencesState.initial()) {
    on<UserPreferencesEvent>((event, emit) async {
      await event.map(
        loadPreferences: (e) async {
          emit(const UserPreferencesState.loading());
          try {
            final preferences = await _repository.getPreferences(e.userId);
            emit(UserPreferencesState.loaded(preferences));
          } catch (e) {
            emit(UserPreferencesState.error(e.toString()));
          }
        },
        updatePreferences: (e) async {
          emit(const UserPreferencesState.loading());
          try {
            final preferences = await _repository.updatePreferences(e.preferences);
            emit(UserPreferencesState.loaded(preferences));
          } catch (e) {
            emit(UserPreferencesState.error(e.toString()));
          }
        },
        createPreferences: (e) async {
          emit(const UserPreferencesState.loading());
          try {
            final preferences = await _repository.createPreferences(e.preferences);
            emit(UserPreferencesState.loaded(preferences));
          } catch (e) {
            emit(UserPreferencesState.error(e.toString()));
          }
        },
      );
    });
  }
} 