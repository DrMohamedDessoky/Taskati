import 'package:flutter/material.dart';
import 'package:taskati/core/utils/app_strings.dart';
import 'package:taskati/core/utils/app_text_style.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.appName,
      style: AppTextStyle.bold30,
    );
  }
}
