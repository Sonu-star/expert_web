import 'package:flutter/material.dart';

class BriefCard extends StatelessWidget {
  const BriefCard({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "YOUR BRIEF",
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'Regular',
              letterSpacing: 1.2,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Regular',
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
