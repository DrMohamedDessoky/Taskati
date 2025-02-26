import 'package:flutter/material.dart';
import 'package:taskati/core/utils/app_colors.dart';
import 'package:taskati/core/utils/app_text_style.dart';
import 'package:taskati/core/widgets/app_hieght_box.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.bottonColor),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Icon(Icons.light_mode),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 60,
                ),
                Positioned(
                    bottom: 5,
                    right: 4,
                    child: Icon(
                      Icons.camera_alt,
                      color: AppColors.bottonColor,
                    ))
              ],
            ),
            AppHieghtBox(50),
            Container(
              width: 300,
              height: .5,
              decoration: BoxDecoration(color: AppColors.bottonColor),
            ),
            AppHieghtBox(40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Sayed Abdul-Aziz",
                      style: AppTextStyle.bold20
                          .copyWith(color: AppColors.bottonColor),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.bottonColor)),
                    child: Icon(
                      Icons.edit,
                      color: AppColors.bottonColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
