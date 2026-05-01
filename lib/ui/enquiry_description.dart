import 'package:flutter/material.dart';

class EnquiryDescription extends StatelessWidget {
  const EnquiryDescription({super.key, required this.wide, required this.desc});
  final double wide;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Text(
      desc,
      style: TextStyle(
        fontSize: wide > 1200
            ? 16
            : wide > 800
            ? wide / 80
            : wide / 70,
        fontFamily: 'Regular',
        color: Colors.grey.shade600,
      ),
    );
  }
}
