import 'package:flutter/material.dart';
import 'package:taskati/core/utils/app_colors.dart';
import 'package:taskati/core/utils/app_text_style.dart';

class DateContainer extends StatelessWidget {
  const DateContainer({super.key, required this.isActive});
  final bool isActive;
  Color themeColor() => isActive ? AppColors.bottonColor : Colors.transparent;
  Color textColor() => isActive ? Colors.white : Colors.black;

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: themeColor()),
        child: Column(
          children: [
            Text("Oct",
                style: AppTextStyle.normal15.copyWith(color: textColor())),
            Text(
              "30",
              style: AppTextStyle.normal25.copyWith(color: textColor()),
            ),
            Text(
              "Mon",
              style: AppTextStyle.normal15.copyWith(color: textColor()),
            )
          ],
        ),
      ),
    );
  }
}
