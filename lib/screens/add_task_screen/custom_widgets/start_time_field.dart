import 'package:flutter/material.dart';

class StartTimeField extends StatelessWidget {
  const StartTimeField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      controller: controller,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "end time is required";
        } else {
          return null;
        }
      },
      onTap: () async {
        TimeOfDay? time = await showTimePicker(
            context: context, initialTime: TimeOfDay.now());
        if (time != null && context.mounted) {
          controller.text = time.format(context);
        }
      },
      decoration: InputDecoration(
          hintText: "choose time",
          hintStyle: TextStyle(color: Colors.grey.shade500),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
