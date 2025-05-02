import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:plan_ai/features/tasks/domain/models/task.dart';
import 'package:plan_ai/features/tasks/domain/repositories/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  final SupabaseClient _supabaseClient;

  TaskRepositoryImpl({required SupabaseClient supabaseClient})
      : _supabaseClient = supabaseClient;

  @override
  Future<List<Task>> getTasks(String userId) async {
    print('Getting tasks for user: $userId');
    try {
      final response = await _supabaseClient
          .from('tasks')
          .select()
          .eq('user_id', userId)
          .order('due_date', ascending: true);

      print('Supabase response type: ${response.runtimeType}');
      print('Supabase response: $response');
      
      if (response == null) {
        print('Response is null');
        return [];
      }

      final tasks = (response as List)
          .map((task) {
            print('Processing task: $task');
            return Task.fromJson(task);
          })
          .toList();
      print('Parsed tasks: ${tasks.length}');
      for (var task in tasks) {
        print('Task details: ${task.title}, Due: ${task.dueDate}, User: ${task.userId}');
      }
      return tasks;
    } catch (e) {
      print('Error getting tasks: $e');
      rethrow;
    }
  }

  @override
  Future<Task> createTask(Task task) async {
    print('Creating task: ${task.toJson()}');
    try {
      final response = await _supabaseClient
          .from('tasks')
          .insert(task.toJson())
          .select()
          .single();

      print('Created task response: $response');
      if (response == null) {
        throw Exception('Failed to create task: Response is null');
      }
      return Task.fromJson(response);
    } catch (e) {
      print('Error creating task: $e');
      rethrow;
    }
  }

  @override
  Future<Task> updateTask(Task task) async {
    final response = await _supabaseClient
        .from('tasks')
        .update(task.toJson())
        .eq('id', task.id)
        .select()
        .single();

    return Task.fromJson(response);
  }

  @override
  Future<void> deleteTask(String taskId) async {
    await _supabaseClient
        .from('tasks')
        .delete()
        .eq('id', taskId);
  }
} 