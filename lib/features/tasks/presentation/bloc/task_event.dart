part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.loadTasks(String userId) = _LoadTasks;
  const factory TaskEvent.createTask(Task task) = _CreateTask;
  const factory TaskEvent.updateTask(Task task) = _UpdateTask;
  const factory TaskEvent.deleteTask(String taskId) = _DeleteTask;
} 