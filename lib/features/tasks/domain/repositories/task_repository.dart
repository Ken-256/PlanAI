import 'package:plan_ai/features/tasks/domain/models/task.dart';

abstract class TaskRepository {
  Future<List<Task>> getTasks(String userId);
  Future<Task> createTask(Task task);
  Future<Task> updateTask(Task task);
  Future<void> deleteTask(String taskId);
} 