import 'package:flutter/material.dart';

class StepLine extends StatelessWidget {
  const StepLine({super.key, required this.active});
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 4,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: active ? const Color(0xFFF59E0B) : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
