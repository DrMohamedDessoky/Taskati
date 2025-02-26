import 'package:flutter/material.dart';
import 'package:taskati/core/utils/app_text_style.dart';
import 'package:taskati/core/widgets/app_width_box.dart';

class BackgroundContainerComplt extends StatelessWidget {
  const BackgroundContainerComplt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Icon(
                Icons.done,
                color: Colors.white,
              ),
              AppWidthBox(10),
              Text(
                "Completed",
                style: AppTextStyle.normal18.copyWith(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
