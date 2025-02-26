import 'package:flutter/material.dart';
import 'package:taskati/core/utils/app_strings.dart';
import 'package:taskati/core/utils/app_text_style.dart';

class Descriptions extends StatelessWidget {
  const Descriptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.appDescreption,
      style: AppTextStyle.small20,
    );
  }
}
