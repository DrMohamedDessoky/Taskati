import 'package:flutter/material.dart';

class TitleField extends StatelessWidget {
  const TitleField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "title is required";
        }
        return null;
      },
      decoration: InputDecoration(
          hintText: "Enter Title here",
          hintStyle: TextStyle(color: Colors.grey.shade500),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
