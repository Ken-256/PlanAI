import 'package:get_it/get_it.dart';
import 'package:plan_ai/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:plan_ai/features/auth/data/repositories/user_preferences_repository_impl.dart';
import 'package:plan_ai/features/auth/domain/repositories/user_preferences_repository.dart';
import 'package:plan_ai/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:plan_ai/features/auth/presentation/bloc/user_preferences_bloc.dart';
import 'package:plan_ai/features/schedule/data/services/local_scheduler_service.dart';
import 'package:plan_ai/features/schedule/presentation/bloc/schedule_bloc.dart';
import 'package:plan_ai/features/tasks/data/repositories/task_repository_impl.dart';
import 'package:plan_ai/features/tasks/presentation/bloc/task_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:plan_ai/features/schedule/data/repositories/schedule_repository.dart';
import 'package:plan_ai/features/schedule/data/repositories/local_schedule_repository.dart';

final getIt = GetIt.instance;

Future<void> initDependencies() async {
  // Register Supabase client
  getIt.registerSingleton<SupabaseClient>(Supabase.instance.client);

  // Register repositories
  getIt.registerSingleton<AuthRepositoryImpl>(
    AuthRepositoryImpl(getIt<SupabaseClient>()),
  );
  getIt.registerSingleton<TaskRepositoryImpl>(
    TaskRepositoryImpl(getIt<SupabaseClient>()),
  );
  getIt.registerSingleton<UserPreferencesRepository>(
    UserPreferencesRepositoryImpl(getIt<SupabaseClient>()),
  );

  // Register blocs
  getIt.registerFactory<AuthBloc>(
    () => AuthBloc(getIt<AuthRepositoryImpl>()),
  );
  getIt.registerFactory<TaskBloc>(
    () => TaskBloc(getIt<TaskRepositoryImpl>()),
  );
  getIt.registerFactory<UserPreferencesBloc>(
    () => UserPreferencesBloc(getIt<UserPreferencesRepository>()),
  );

  // Register scheduler service
  getIt.registerFactory<LocalSchedulerService>(
    () => LocalSchedulerService(getIt<TaskBloc>()),
  );

  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreferences);

  // Repositories
  getIt.registerLazySingleton<ScheduleRepository>(
    () => LocalScheduleRepository(getIt()),
  );

  // Register schedule bloc
  getIt.registerFactory<ScheduleBloc>(
    () => ScheduleBloc(
      getIt<LocalSchedulerService>(),
      getIt<ScheduleRepository>(),
    ),
  );
} 