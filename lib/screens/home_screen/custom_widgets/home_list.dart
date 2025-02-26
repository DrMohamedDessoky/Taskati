import 'package:flutter/material.dart';
import 'package:taskati/screens/home_screen/custom_widgets/background_container_complt.dart';
import 'package:taskati/screens/home_screen/custom_widgets/background_container_dlt.dart';
import 'package:taskati/screens/home_screen/custom_widgets/task_container.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
                child: ListView.builder(
                    itemBuilder: (BuildContext context, index) => Dismissible(
                        key: UniqueKey(),
                        background: BackgroundContainerComplt(),
                        secondaryBackground: BackgroundContainerDlt(),
                        child: TaskContainer()),
                    itemCount: 10),
              )
 ;
  }
}