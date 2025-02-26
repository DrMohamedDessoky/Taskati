import 'package:flutter/material.dart';
import 'package:taskati/core/widgets/app_hieght_box.dart';
import 'package:taskati/screens/home_screen/custom_widgets/date_container.dart';
import 'package:taskati/screens/home_screen/custom_widgets/first_row_in_home.dart';
import 'package:taskati/screens/home_screen/custom_widgets/home_list.dart';
import 'package:taskati/screens/home_screen/custom_widgets/secon_row_in_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
        child: Column(
          children: [
            FirstRowInHome(),
            AppHieghtBox(20),
            SeconRowInHome(),
            AppHieghtBox(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DateContainer(isActive: true),
                DateContainer(isActive: false),
                DateContainer(isActive: false),
                DateContainer(isActive: false)
              ],
            ),
            AppHieghtBox(19),
            HomeList()
          ],
        ),
      ),
    );
  }
}
