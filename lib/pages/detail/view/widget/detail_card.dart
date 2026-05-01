import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({
    super.key,
    required this.budget,
    required this.urgency,
    required this.time,
  });

  final String budget;
  final String time;
  final String urgency;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _smallCard("BUDGET", budget)),
        const SizedBox(width: 20),
        Expanded(child: _smallCard("URGENCY", urgency)),
        const SizedBox(width: 20),
        Expanded(child: _smallCard("PREFERRED TIMING", time)),
      ],
    );
  }

  Widget _smallCard(String label, String value) {
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
            label,
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'Regular',
              letterSpacing: 1.2,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Bold',
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
