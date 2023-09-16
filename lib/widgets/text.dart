import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  double fontSize;
  final fontWeight;
  CustomText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    double fontSizeInDP1 = 12.0;
    double fontSizeInDP = 16.0;
    double fontSizeInDP5 = 14.0;
    return Text(text,
        //'Address Details',
        style: TextStyle(
            fontFamily:
                'Inter', // Use the fontFamily you specified in pubspec.yaml
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: Color.fromRGBO(
                89, 83, 83, 1)) // You can adjust the weight as needed
        );
  }
}

class CustomText1 extends StatelessWidget {
  final String text;
  CustomText1({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    double fontSizeInDP1 = 12.0;
    double fontSizeInDP = 16.0;
    double fontSizeInDP5 = 14.0;
    return Text(text,
        //'Address Details',
        style: TextStyle(
            fontFamily:
                'Inter', // Use the fontFamily you specified in pubspec.yaml
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Color.fromRGBO(
                89, 83, 83, 1)) // You can adjust the weight as needed
        );
  }
}
