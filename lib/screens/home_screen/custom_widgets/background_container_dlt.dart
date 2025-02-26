import 'package:flutter/material.dart';
import 'package:taskati/core/utils/app_text_style.dart';
import 'package:taskati/core/widgets/app_width_box.dart';

class BackgroundContainerDlt extends StatelessWidget {
  const BackgroundContainerDlt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Deleted",
                style: AppTextStyle.normal18.copyWith(color: Colors.white),
              ),
              AppWidthBox(10),
              Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
