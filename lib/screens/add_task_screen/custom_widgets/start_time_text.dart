import 'package:flutter/material.dart';
import 'package:taskati/core/utils/app_text_style.dart';

class StartTimeText extends StatelessWidget {
  const StartTimeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Start Time",
      style: AppTextStyle.bold25,
    );
  }
}
