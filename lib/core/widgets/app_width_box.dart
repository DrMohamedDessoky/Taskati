import 'package:flutter/material.dart';

class AppWidthBox extends StatelessWidget {
  const AppWidthBox(this.width, {super.key});
    final double  width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
