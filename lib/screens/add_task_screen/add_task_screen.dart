import 'package:flutter/material.dart';
import 'package:taskati/core/utils/app_colors.dart';
import 'package:taskati/core/utils/app_text_style.dart';
import 'package:taskati/core/utils/task_manager.dart';
import 'package:taskati/core/utils/task_model.dart';
import 'package:taskati/core/widgets/app_bottons.dart';
import 'package:taskati/core/widgets/app_hieght_box.dart';
import 'package:taskati/core/widgets/app_width_box.dart';
import 'package:taskati/screens/add_task_screen/custom_widgets/colored_circles.dart';
import 'package:taskati/screens/add_task_screen/custom_widgets/date_field.dart';
import 'package:taskati/screens/add_task_screen/custom_widgets/date_text.dart';
import 'package:taskati/screens/add_task_screen/custom_widgets/end_time_field.dart';
import 'package:taskati/screens/add_task_screen/custom_widgets/note_field.dart';
import 'package:taskati/screens/add_task_screen/custom_widgets/note_text.dart';
import 'package:taskati/screens/add_task_screen/custom_widgets/start_time_field.dart';
import 'package:taskati/screens/add_task_screen/custom_widgets/start_time_text.dart';
import 'package:taskati/screens/add_task_screen/custom_widgets/title_field.dart';
import 'package:taskati/screens/add_task_screen/custom_widgets/title_text.dart';
import 'package:taskati/screens/add_task_screen/custom_widgets/end_time_text.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final GlobalKey<FormState> formkey = GlobalKey();
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController startTimecontroller = TextEditingController();
  final TextEditingController endtimeController = TextEditingController();
  final TaskManager manager = TaskManager.manager;

  // @override
  // void dispose() {
  //   controller1.dispose();
  //   controller2.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.bottonColor),
        centerTitle: true,
        title: Text(
          "Add Task",
          style: TextStyle(
              color: AppColors.bottonColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Form(
          key: formkey,
          child: ListView(
            children: [
              TitleText(),
              AppHieghtBox(20),
              TitleField(
                controller: controller1,
              ),
              AppHieghtBox(20),
              NoteText(),
              AppHieghtBox(20),
              NoteField(
                controller: controller2,
              ),
              AppHieghtBox(20),
              DateText(),
              AppHieghtBox(20),
              DateField(),
              AppHieghtBox(20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StartTimeText(),
                        AppHieghtBox(20),
                        StartTimeField(
                          controller: startTimecontroller,
                        )
                      ],
                    ),
                  ),
                  AppWidthBox(20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        EndTimeText(),
                        AppHieghtBox(20),
                        EndTimeField(controller: endtimeController,)
                      ],
                    ),
                  )
                ],
              ),
              AppHieghtBox(20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Color",
                          style: AppTextStyle.bold20,
                        ),
                        AppHieghtBox(10),
                        ColoredCircles()
                      ],
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        if (formkey.currentState!.validate()) {
                          manager.addTask(TaskModel(
                              title: controller1.text,
                              isCompleted: true,
                              desscription: controller2.text,
                              startDate: startTimecontroller.text,
                              endDate: endtimeController.text));
                          Navigator.pop(context);
                        }
                      },
                      child: AppBottons(title: "Create Task"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
