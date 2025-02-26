import 'package:flutter/material.dart';

class DateField extends StatelessWidget {
  const DateField({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDatePicker(
            context: context,
            firstDate: DateTime.now(),
            lastDate: DateTime(2030));
      },
      child: TextFormField(
        enabled: false,
        decoration: InputDecoration(
            hintText: "12/2/2025",
            suffixIcon: Icon(
              Icons.calendar_today,
              color: Colors.grey,
            ),
            hintStyle: TextStyle(color: Colors.grey.shade500),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
