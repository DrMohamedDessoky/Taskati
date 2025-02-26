import 'package:flutter/material.dart';

class EndTimeField extends StatelessWidget {
  const EndTimeField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "05:45 PM",
          hintStyle: TextStyle(color: Colors.grey.shade500),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
