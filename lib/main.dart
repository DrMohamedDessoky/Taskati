import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:taskati/core/utils/task_model.dart';
import 'package:taskati/my_app.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TaskModelAdapter());
 await Hive.openBox<TaskModel>("myTaskBox");
  runApp(const MyApp());
}
