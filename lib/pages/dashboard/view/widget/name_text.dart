import 'package:flutter/material.dart';

class NameTextWidget extends StatelessWidget {
  const NameTextWidget({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Welcome back, ",
            style: TextStyle(
              fontSize: 42,
              fontFamily: 'Bold',
              color: Colors.white,
            ),
          ),
          TextSpan(
            text: name,
            style: TextStyle(
              fontSize: 42,
              fontFamily: 'Bold',
              color: Color(0xFFF59E0B),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
