import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';

class ListViewContainerWeb extends StatelessWidget {
  final String items2;

  final imageItems;

  const ListViewContainerWeb({
    super.key,
    required this.imageItems,
    required this.items2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.13,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 3,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Container(
              // width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                color: Colors.white,
                //  borderRadius: BorderRadius.circular(14.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    // blurRadius: 3,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Image.asset(
                imageItems,
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.1,

                // Adjust the height
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(items2 as String,
                //'Address Details',
                style: const TextStyle(
                    fontFamily:
                        'Inter', // Use the fontFamily you specified in pubspec.yaml
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Color.fromRGBO(
                        89, 83, 83, 1)) // You can adjust the weight as needed
                ),
          )
        ],
      ),
    );
  }
}

class CustomWallet5Web extends StatelessWidget {
  final String text;
  final String image;

  CustomWallet5Web({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.27,
            height: MediaQuery.of(context).size.height * 0.24,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color.fromARGB(
                    255, 148, 179, 205), // Set the border color here
                width: 1.0, // Set the border width here
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Image.asset(
              image, // Replace with your image asset path
              width: 140.0,
              height: 140.0,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.006,
        ),
        Center(
          child: CustomText(
            text: text,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class CustomWallet6Web extends StatelessWidget {
  final String text;
  final String image;
  final String text1;
  //final String? text2;
  CustomWallet6Web({
    super.key,
    //required this.text,
    required this.image,
    required this.text,
    required this.text1,
    // this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.12,
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
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 17,
          ),
          child:
              //  Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              CustomText(
            text: text,
            fontSize: 19,
            fontWeight: FontWeight.normal,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.1,
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  // spreadRadius: 5,
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ]),
          child: Image.asset(
            image, // Replace with your image asset path

            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 17),
          child: CustomText(
            text: text1,
            fontSize: 19,
            fontWeight: FontWeight.normal,
          ),
        ),
      ]),
    );
  }
}
