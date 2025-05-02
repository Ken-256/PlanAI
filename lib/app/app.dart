import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plan_ai/core/di/dependency_injection.dart';
import 'package:plan_ai/features/auth/presentation/bloc/auth_bloc.dart' as auth_bloc;
import 'package:plan_ai/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:plan_ai/features/auth/domain/repositories/user_preferences_repository.dart';
import 'package:plan_ai/features/auth/presentation/bloc/user_preferences_bloc.dart';
import 'package:plan_ai/features/auth/presentation/pages/auth_page.dart';
import 'package:plan_ai/features/home/presentation/pages/home_page.dart';
import 'package:plan_ai/features/schedule/presentation/bloc/schedule_bloc.dart';
import 'package:plan_ai/features/schedule/presentation/pages/schedule_page.dart' as schedule_page;
import 'package:plan_ai/features/tasks/presentation/bloc/task_bloc.dart';
import 'package:plan_ai/features/tasks/data/repositories/task_repository_impl.dart';
import 'package:plan_ai/features/schedule/data/services/local_scheduler_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:plan_ai/features/auth/presentation/pages/login_page.dart';
import 'package:plan_ai/features/tasks/presentation/pages/task_creation_page.dart';
import 'package:plan_ai/features/schedule/data/repositories/schedule_repository.dart';
import 'package:plan_ai/features/home/presentation/pages/schedule_page.dart' as home_schedule_page;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => auth_bloc.AuthBloc(
            AuthRepositoryImpl(Supabase.instance.client),
          ),
        ),
        BlocProvider(
          create: (context) => TaskBloc(
            TaskRepositoryImpl(Supabase.instance.client),
          ),
        ),
        BlocProvider(
          create: (context) => UserPreferencesBloc(
            getIt<UserPreferencesRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => ScheduleBloc(
            LocalSchedulerService(getIt<TaskBloc>()),
            getIt<ScheduleRepository>(),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'PlanAI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF6750A4),
            brightness: Brightness.light,
          ),
          textTheme: GoogleFonts.interTextTheme(),
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF6750A4),
            brightness: Brightness.dark,
          ),
          textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => BlocBuilder<auth_bloc.AuthBloc, auth_bloc.AuthState>(
                builder: (context, state) {
                  return state.map(
                    initial: (_) => const LoginPage(),
                    loading: (_) => const Scaffold(
                      body: Center(child: CircularProgressIndicator()),
                    ),
                    authenticated: (_) => const HomePage(),
                    unauthenticated: (_) => const LoginPage(),
                    error: (state) => Scaffold(
                      body: Center(
                        child: Text(state.message),
                      ),
                    ),
                  );
                },
              ),
          '/schedule': (context) => const schedule_page.SchedulePage(),
          '/login': (context) => const LoginPage(),
          '/home': (context) => const HomePage(),
          '/create-task': (context) => const TaskCreationPage(),
        },
      ),
    );
  }
} 