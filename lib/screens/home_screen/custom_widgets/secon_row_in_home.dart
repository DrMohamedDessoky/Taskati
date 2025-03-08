import 'package:flutter/material.dart';
import 'package:taskati/core/helper/nav_helper.dart';
import 'package:taskati/core/widgets/app_bottons.dart';
import 'package:taskati/screens/add_task_screen/add_task_screen.dart';

class SeconRowInHome extends StatelessWidget {
  const SeconRowInHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            "February 25,2025\nToday",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        InkWell(
            onTap: () {
              
              NavHelper.goTo(context, AddTaskScreen());
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (BuildContext context) => AddTaskScreen()));
            },
            child: AppBottons(title: "+ Add Task"))
      ],
    );
  }
}
