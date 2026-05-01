import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.controller,
    required this.maxLength,
    required this.onChanged,
  });
  final TextEditingController controller;
  final int maxLength;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLength: maxLength,
      textAlignVertical: TextAlignVertical.top,
      maxLines: 10,
      minLines: 10,
      style: const TextStyle(fontSize: 14),
      decoration: InputDecoration(
        hintText:
            "What's the situation, what have you tried, what does success look like?",
        hintStyle: TextStyle(color: Colors.grey.shade500),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.all(16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xFFF59E0B)),
        ),
      ),
      onChanged: onChanged,
    );
  }
}
