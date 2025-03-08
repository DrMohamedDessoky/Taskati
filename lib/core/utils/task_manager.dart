import 'package:taskati/core/utils/task_model.dart';

class TaskManager {
  List<TaskModel> tasks = [
    TaskModel(
        title: "title",
        isCompleted: false,
        desscription: "I will do this task later",
        startDate: "startDate",
        endDate: "endDate")
  ];
  TaskManager._();
  static final TaskManager manager = TaskManager._();
  void addTask(TaskModel task) {
    tasks.add(task);
  }
}
