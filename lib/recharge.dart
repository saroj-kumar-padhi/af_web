import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';

class RechargePage extends StatelessWidget {
  const RechargePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 90, left: 30, right: 30),
          child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.06,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 192, 208, 221),
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      // spreadRadius: 5,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ]),
              child: Center(
                child: CustomText(
                  fontWeight: FontWeight.normal,
                  text: '793*******',
                  fontSize: 14,
                  // '793*******',
                ),
              )),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: CustomText(
            fontWeight: FontWeight.normal,
            text: 'Select the desired Network',
            fontSize: 14,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomWallet4(image: 'assets/AWCC.jpg'),
            CustomWallet4(image: 'assets/MTN.jpg'),
            CustomWallet4(image: 'assets/Roshan.png'),
            CustomWallet4(image: 'assets/salaam.jpg'),
            CustomWallet4(image: 'assets/etisalat-200x160-1.png'),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(
                color: Color.fromRGBO(46, 51, 135, 1), //
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    // spreadRadius: 5,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ]),
            child: const Center(
              child: Text('Product Inquiries',
                  //'Address Details',
                  style: TextStyle(
                      fontFamily:
                          'Inter', // Use the fontFamily you specified in pubspec.yaml
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color:
                          Colors.white) // You can adjust the weight as needed
                  ),
            )

            //  Center(
            //   child: CustomText(
            //     fontWeight: FontWeight.normal,
            //     text: 'Product Inquiries',
            //     fontSize: 14,
            //     // '793*******',
            //   ),
            ),
      ]),
    );
  }
}
