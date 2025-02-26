import 'package:flutter/material.dart';
import 'package:taskati/core/utils/app_text_style.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
              "Title",
              style: AppTextStyle.bold25,
            );
  }
}