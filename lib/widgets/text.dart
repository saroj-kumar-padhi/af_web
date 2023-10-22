import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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
    double fontSizeInDP1 = 12.0.sp;
    double fontSizeInDP = 16.0.sp;
    double fontSizeInDP5 = 14.0.sp;
    return Text(text,
        softWrap: true,
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
    return Container(
      width: MediaQuery.of(context).size.width *
          0.3, // Set the maximum width for the text
      child: Text(
        text,
        // textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 13,
          fontWeight: FontWeight.normal,
          color: Color.fromRGBO(89, 83, 83, 1),
        ),
        softWrap: true, // Enable text wra
      ),
    );
  }
}

class CustomText2 extends StatelessWidget {
  final String text;
  double fontSize;
  final fontWeight;
  final color;
  CustomText2({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    double fontSizeInDP1 = 12.0;
    double fontSizeInDP = 16.0;
    double fontSizeInDP5 = 14.0;
    return Text(text,
        softWrap: true,
        //'Address Details',
        style: TextStyle(
            fontFamily:
                'Inter', // Use the fontFamily you specified in pubspec.yaml
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color
            // Color.fromRGBO(
            //     89, 83, 83, 1)
            ) // You can adjust the weight as needed
        );
  }
}
