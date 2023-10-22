import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextWeb1 extends StatelessWidget {
  final String text;
  CustomTextWeb1({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    double fontSizeInDP1 = 12.0;
    double fontSizeInDP = 16.0;
    double fontSizeInDP5 = 14.0;
    return Text(
      text,
      // textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      softWrap: true, // Enable text wra
    );
  }
}
