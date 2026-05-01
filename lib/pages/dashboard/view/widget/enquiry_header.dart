import 'package:flutter/material.dart';

import 'enquiry_card.dart';
import 'primary_button.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.wide});
  final double wide;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: wide / 25, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enquiries",
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.black,
                    fontFamily: 'Bold',
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  "Track every consultant request from match to connection.",
                  style: TextStyle(
                    fontFamily: 'Regular',
                    fontSize: 14,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),

          PrimaryButton(text: "New enquiry", wide: wide),
        ],
      ),
    );
  }
}
