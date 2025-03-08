import 'package:flutter/material.dart';

class NoteField extends StatelessWidget {
  const NoteField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "this field is required";
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
          hintText: "Enter Note here",
          hintStyle: TextStyle(color: Colors.grey.shade500),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
