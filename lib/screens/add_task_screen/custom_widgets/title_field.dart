import 'package:flutter/material.dart';

class TitleField extends StatelessWidget {
  const TitleField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter Title here",
                  hintStyle: TextStyle(color: Colors.grey.shade500),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            )
 ;
  }
}