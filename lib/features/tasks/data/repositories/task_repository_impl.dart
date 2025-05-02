import 'package:plan_ai/features/tasks/domain/models/task.dart';
import 'package:plan_ai/features/tasks/domain/repositories/task_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class TaskRepositoryImpl implements TaskRepository {
  final SupabaseClient _supabaseClient;

  TaskRepositoryImpl(this._supabaseClient);

  @override
  Future<List<Task>> getTasks(String userId) async {
    try {
      final response = await _supabaseClient
          .from('tasks')
          .select()
          .eq('user_id', userId)
          .order('created_at', ascending: false);

      if (response == null) {
        return [];
      }

      return (response as List)
          .map((task) => Task.fromJson({
                'id': task['id'] ?? '',
                'userId': task['user_id'] ?? '',
                'title': task['title'] ?? '',
                'description': task['description'] ?? '',
                'estimatedDurationMinutes': task['estimated_duration_minutes'] ?? 0,
                'dueDate': task['due_date'] ?? DateTime.now().toIso8601String(),
                'priority': task['priority'] ?? 'important',
                'isCompleted': task['is_completed'] ?? false,
                'completedAt': task['completed_at'],
                'createdAt': task['created_at'] ?? DateTime.now().toIso8601String(),
                'updatedAt': task['updated_at'] ?? DateTime.now().toIso8601String(),
              }))
          .toList();
    } catch (e) {
      print('Error getting tasks: $e');
      return [];
    }
  }

  @override
  Future<Task> createTask(Task task) async {
    try {
      final response = await _supabaseClient
          .from('tasks')
          .insert({
            'user_id': task.userId,
            'title': task.title,
            'description': task.description,
            'estimated_duration_minutes': task.estimatedDurationMinutes,
            'due_date': task.dueDate.toIso8601String(),
            'priority': task.priority,
            'is_completed': task.isCompleted,
            'completed_at': task.completedAt?.toIso8601String(),
            'created_at': task.createdAt.toIso8601String(),
            'updated_at': task.updatedAt.toIso8601String(),
          })
          .select()
          .single();

      return Task.fromJson({
        'id': response['id'] ?? '',
        'userId': response['user_id'] ?? '',
        'title': response['title'] ?? '',
        'description': response['description'] ?? '',
        'estimatedDurationMinutes': response['estimated_duration_minutes'] ?? 0,
        'dueDate': response['due_date'] ?? DateTime.now().toIso8601String(),
        'priority': response['priority'] ?? 'important',
        'isCompleted': response['is_completed'] ?? false,
        'completedAt': response['completed_at'],
        'createdAt': response['created_at'] ?? DateTime.now().toIso8601String(),
        'updatedAt': response['updated_at'] ?? DateTime.now().toIso8601String(),
      });
    } catch (e) {
      print('Error creating task: $e');
      rethrow;
    }
  }

  @override
  Future<Task> updateTask(Task task) async {
    try {
      final response = await _supabaseClient
          .from('tasks')
          .update({
            'title': task.title,
            'description': task.description,
            'estimated_duration_minutes': task.estimatedDurationMinutes,
            'due_date': task.dueDate.toIso8601String(),
            'priority': task.priority,
            'is_completed': task.isCompleted,
            'completed_at': task.completedAt?.toIso8601String(),
            'updated_at': DateTime.now().toIso8601String(),
          })
          .eq('id', task.id)
          .select()
          .single();

      return Task.fromJson({
        'id': response['id'] ?? '',
        'userId': response['user_id'] ?? '',
        'title': response['title'] ?? '',
        'description': response['description'] ?? '',
        'estimatedDurationMinutes': response['estimated_duration_minutes'] ?? 0,
        'dueDate': response['due_date'] ?? DateTime.now().toIso8601String(),
        'priority': response['priority'] ?? 'important',
        'isCompleted': response['is_completed'] ?? false,
        'completedAt': response['completed_at'],
        'createdAt': response['created_at'] ?? DateTime.now().toIso8601String(),
        'updatedAt': response['updated_at'] ?? DateTime.now().toIso8601String(),
      });
    } catch (e) {
      print('Error updating task: $e');
      rethrow;
    }
  }

  @override
  Future<void> deleteTask(String taskId) async {
    try {
      await _supabaseClient
          .from('tasks')
          .delete()
          .eq('id', taskId);
    } catch (e) {
      print('Error deleting task: $e');
      rethrow;
    }
  }
} 