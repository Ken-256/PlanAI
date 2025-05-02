import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:plan_ai/features/auth/domain/repositories/auth_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        signUp: (e) => _handleSignUp(e, emit),
        signIn: (e) => _handleSignIn(e, emit),
        signOut: (e) => _handleSignOut(e, emit),
      );
    });
  }

  Future<void> _handleSignUp(_SignUp event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      final response = await _authRepository.signUp(
        email: event.email,
        password: event.password,
      );
      if (response.user != null) {
        emit(AuthState.authenticated(response.user!));
      } else {
        emit(const AuthState.unauthenticated());
      }
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> _handleSignIn(_SignIn event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      final response = await _authRepository.signIn(
        email: event.email,
        password: event.password,
      );
      if (response.user != null) {
        emit(AuthState.authenticated(response.user!));
      } else {
        emit(const AuthState.unauthenticated());
      }
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> _handleSignOut(_SignOut event, Emitter<AuthState> emit) async {
    try {
      await _authRepository.signOut();
      emit(const AuthState.unauthenticated());
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }
} 