import 'package:flutter/material.dart';

class EnquiryBottonButton extends StatelessWidget {
  const EnquiryBottonButton({
    super.key,
    required this.now,
    required this.next,
    required this.type,
  });
  final bool type;
  final VoidCallback now;
  final VoidCallback next;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: now,
          child: Text(
            type ? "Cancel" : "Back",
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Regular',
              color: Colors.black87,
            ),
          ),
        ),

        ElevatedButton(
          onPressed: next,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFF59E0B),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Row(
            children: [
              Text(
                "Continue",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Regular',
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.arrow_forward, size: 18, color: Colors.black),
            ],
          ),
        ),
      ],
    );
  }
}
