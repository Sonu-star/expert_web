import 'package:flutter/material.dart';

class EnquiryLabel extends StatelessWidget {
  const EnquiryLabel({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontFamily: 'Regular',
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
