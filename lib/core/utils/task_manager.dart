import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:taskati/core/utils/task_model.dart';

class TaskManager extends ChangeNotifier {
  List<TaskModel> tasks = [];
  void reverseList() {
    tasks = tasks.reversed.toList();
    notifyListeners();
  }

  TaskManager._() {
    reverseList();
    loadData();
  }
  static final TaskManager manager = TaskManager._();
  void addTask(TaskModel task) async {
    tasks.add(task);
    await Hive.box<TaskModel>("myTaskBox").add(task);
    notifyListeners();
  }

  void loadData() {
    tasks = Hive.box<TaskModel>("myTaskBox").values.toList();
    notifyListeners();
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
    Hive.box<TaskModel>("myTaskBox").deleteAt(index);
    notifyListeners();
  }

  void completedTask(int index) {
    tasks[index].isCompleted = true;

    Hive.box<TaskModel>("myTaskBox").putAt(index, tasks[index]);
    notifyListeners();
  }
}
