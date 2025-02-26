import 'package:flutter/material.dart';

class NoteField extends StatelessWidget {
  const NoteField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter Note here",
                  hintStyle: TextStyle(color: Colors.grey.shade500),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            );
  }
}