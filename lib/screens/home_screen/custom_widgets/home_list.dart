import 'package:flutter/material.dart';
import 'package:taskati/core/utils/task_manager.dart';
import 'package:taskati/screens/home_screen/custom_widgets/background_container_complt.dart';
import 'package:taskati/screens/home_screen/custom_widgets/background_container_dlt.dart';
import 'package:taskati/screens/home_screen/custom_widgets/task_container.dart';

class HomeList extends StatelessWidget {
  HomeList({super.key});
  final TaskManager manager = TaskManager.manager;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: TaskManager.manager,
        builder: (context, child) => Expanded(
              child: ListView.builder(
                  itemBuilder: (BuildContext context, index) => Dismissible(
                      key: UniqueKey(),
                      background: BackgroundContainerComplt(),
                      onDismissed: (direction) {
                        if (direction == DismissDirection.endToStart) {
                          manager.deleteTask(index);
                        } if(direction==DismissDirection.startToEnd) {
                          manager.completedTask(index);
                        }
                      },
                      secondaryBackground: BackgroundContainerDlt(),
                      child: TaskContainer(
                        index: index,
                      )),
                  itemCount: manager.tasks.length),
            ));
  }
}
