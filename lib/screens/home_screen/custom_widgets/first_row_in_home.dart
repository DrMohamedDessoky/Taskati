import 'package:flutter/material.dart';
import 'package:taskati/core/utils/app_colors.dart';
import 'package:taskati/core/utils/app_text_style.dart';
import 'package:taskati/screens/edit_profile_screen/edit_profile_screen.dart';

class FirstRowInHome extends StatelessWidget {
  const FirstRowInHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, Sayed",
                style:
                    AppTextStyle.bold25.copyWith(color: AppColors.bottonColor),
              ),
              Text(
                "Have a nice day",
                style: AppTextStyle.normal18,
              )
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => EditProfileScreen()));
          },
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 1),
                shape: BoxShape.circle,
                color: const Color.fromARGB(255, 115, 73, 73),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/formal.jpeg"))),
          ),
        )
      ],
    );
  }
}
