import 'package:flutter/material.dart';
import 'package:taskati/core/utils/app_text_style.dart';

class EndTimeText extends StatelessWidget {
  const EndTimeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "End Time",
      style: AppTextStyle.bold25,
    );
  }
}
