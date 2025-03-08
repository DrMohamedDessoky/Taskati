import 'package:flutter/material.dart';

class EndTimeField extends StatelessWidget {
  const EndTimeField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "end time is required";
        } else {
          return null;
        }
      },
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      onTap: () async {
        TimeOfDay? time = await showTimePicker(
            context: context, initialTime: TimeOfDay.now());
        if (time != null && context.mounted) {
          controller.text = time.format(context);
        }
      },
      readOnly: true,
      controller: controller,
      decoration: InputDecoration(
          hintText: "choose time",
          hintStyle: TextStyle(color: Colors.grey.shade500),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
