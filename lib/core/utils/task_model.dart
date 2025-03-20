import 'package:hive_flutter/adapters.dart';
part 'task_model.g.dart';

@HiveType(typeId: 0)
class TaskModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  bool isCompleted;
  @HiveField(2)
  String desscription;
  @HiveField(3)
  String startDate;
  @HiveField(4)
  String endDate;
  @HiveField(5)
  int containerColorValue;

  TaskModel(
      {required this.title,
      this.isCompleted = false,
      required this.desscription,
      required this.startDate,
      required this.endDate,
      required this.containerColorValue});
}
