import 'package:flutter/material.dart';
import 'package:taskati/core/utils/app_colors.dart';

class AppBottons extends StatelessWidget {
  const AppBottons({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
          color: AppColors.bottonColor,
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
