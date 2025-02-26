import 'package:flutter/material.dart';

class StartTimeField extends StatelessWidget {
  const StartTimeField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
              decoration: InputDecoration(
                  hintText: "03:20 AM",
                  hintStyle: TextStyle(color: Colors.grey.shade500),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            );
  }
}