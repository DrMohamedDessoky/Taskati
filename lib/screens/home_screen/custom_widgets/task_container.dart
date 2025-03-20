import 'package:flutter/material.dart';
import 'package:taskati/core/utils/app_colors.dart';
import 'package:taskati/core/utils/app_text_style.dart';
import 'package:taskati/core/utils/task_manager.dart';
import 'package:taskati/core/widgets/app_hieght_box.dart';
import 'package:taskati/core/widgets/app_width_box.dart';

class TaskContainer extends StatelessWidget {
  TaskContainer({super.key, required this.index});
  final TaskManager manager = TaskManager.manager;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            color:Color(manager.tasks[index].containerColorValue),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(manager.tasks[index].title,
                      style: TextStyle(
                          color: AppColors.textWhiteColor,
                          fontWeight: FontWeight.bold)),
                  AppHieghtBox(10),
                  Row(
                    children: [
                      Icon(
                        Icons.schedule,
                        size: 20,
                        color: Colors.white,
                      ),
                      AppWidthBox(10),
                      Text(
                        "${manager.tasks[index].startDate} - ${manager.tasks[index].endDate}",
                        style:
                            AppTextStyle.normal10.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  AppHieghtBox(10),
                  Text(
                    manager.tasks[index].desscription,
                    style: AppTextStyle.normal15.copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              width: .4,
              decoration: BoxDecoration(color: Colors.white),
            ),
            AppWidthBox(8),
            RotatedBox(
                quarterTurns: 3,
                child: manager.tasks[index].isCompleted
                    ? Text(
                        "completed",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    : Text(
                        "ToDo",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ))
          ],
        ),
      ),
    );
  }
}
