import 'package:flutter/material.dart';
import 'package:taskati/core/utils/app_text_style.dart';

class DateText extends StatelessWidget {
  const DateText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Date",
      style: AppTextStyle.bold25,
    );
  }
}
