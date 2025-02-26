import 'package:flutter/material.dart';

class AppHieghtBox extends StatelessWidget {
  const AppHieghtBox(this.hieght, {super.key});
    final double  hieght;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hieght,
    );
  }
}
