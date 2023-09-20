import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';

class OrderContainer extends StatelessWidget {
  const OrderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              // spreadRadius: 5,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        ClipOval(
          child: Image.asset(
            'assets/etisalat-200x160-1.png', // Replace with your image asset path
            width: 100.0,
            height: 100.0,
            fit: BoxFit.fill,
          ),
        ),
        Column(
          children: [
            CustomText(
              text: 'Product 1',
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            CustomText1(text: '781144198'),
          ],
        ),
        Column(
          children: [
            CustomText1(text: 'Product 1'),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            CustomText1(text: '781144198'),
          ],
        ),
      ]),
    );
  }
}
