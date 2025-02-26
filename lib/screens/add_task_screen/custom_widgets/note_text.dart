import 'package:flutter/material.dart';
import 'package:taskati/core/utils/app_text_style.dart';

class NoteText extends StatelessWidget {
  const NoteText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Note",
              style: AppTextStyle.bold25,);
  }
}
