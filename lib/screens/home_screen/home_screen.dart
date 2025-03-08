import 'package:flutter/material.dart';
import 'package:taskati/core/widgets/app_hieght_box.dart';
import 'package:taskati/screens/home_screen/custom_widgets/date_container.dart';
import 'package:taskati/screens/home_screen/custom_widgets/first_row_in_home.dart';
import 'package:taskati/screens/home_screen/custom_widgets/home_list.dart';
import 'package:taskati/screens/home_screen/custom_widgets/secon_row_in_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isActive1 = true;
  bool isActive2 = false;
  bool isActive3 = false;
  bool isActive4 = false;

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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          isActive1 = true;
                          isActive2 = false;
                          isActive3 = false;
                          isActive4 = false;
                        });
                      },
                      child: DateContainer(isActive: isActive1)),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          isActive1 = false;
                          isActive2 = true;
                          isActive3 = false;
                          isActive4 = false;
                        });
                      },
                      child: DateContainer(isActive: isActive2)),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          isActive1 = false;
                          isActive2 = false;
                          isActive3 = true;
                          isActive4 = false;
                        });
                      },
                      child: DateContainer(isActive: isActive3)),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          isActive1 = false;
                          isActive2 = false;
                          isActive3 = false;
                          isActive4 = true;
                        });
                      },
                      child: DateContainer(isActive: isActive4)),
                
                ],
              ),
            ),
            AppHieghtBox(19),
            HomeList()
          ],
        ),
      ),
    );
  }
}
