import 'package:flutter/material.dart';

class EnquiryHeader extends StatelessWidget {
  const EnquiryHeader({
    super.key,
    required this.wide,
    required this.text1,
    required this.text2,
    required this.text3,
  });
  final double wide;
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: TextStyle(
              fontSize: wide > 1200
                  ? 48
                  : wide > 8
                  ? wide / 25
                  : wide / 20,
              color: Colors.black,
              fontFamily: 'Bold',
            ),
          ),
          TextSpan(
            text: text2,
            style: TextStyle(
              fontSize: wide > 1200
                  ? 48
                  : wide > 8
                  ? wide / 25
                  : wide / 20,
              fontFamily: 'Bold',
              color: Color(0xFFF59E0B),
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: text3,
            style: TextStyle(
              fontFamily: "Bold",
              fontSize: wide > 1200
                  ? 48
                  : wide > 8
                  ? wide / 25
                  : wide / 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
