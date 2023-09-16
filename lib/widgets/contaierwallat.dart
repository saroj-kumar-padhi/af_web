import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomWallet extends StatelessWidget {
  final String text;
  final String text1;
  CustomWallet({super.key, required this.text, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              // spreadRadius: 5,
              blurRadius: 3,
              offset: Offset(0, 3),
            ),
          ]),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 10),
                child: CustomText(
                  text: text,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15, right: 8),
                child: Icon(
                  Icons.credit_card,
                  color: Color.fromRGBO(64, 68, 143, 1),
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 55,
            ),
            child: CustomText1(text: text1),
          ),
          Container(
            //width: double.infinity,
            //height: double.infinity,
            color: const Color.fromRGBO(64, 68, 143, 1),
          ),
        ],
      ),
    );
  }
}

class CustomWallet2 extends StatelessWidget {
  final String text;
  final String text1;
  CustomWallet2({super.key, required this.text, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.43,
      height: MediaQuery.of(context).size.height * 0.17,
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
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.18,
              height: MediaQuery.of(context).size.height * 0.079,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/afgan.jpg', // Replace with your image asset path
                  width: 180.0,
                  height: 180.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, top: 4),
            child: CustomText(
              text: text,
              fontSize: 13,
              fontWeight: FontWeight.normal,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: CustomText(
              text: text1,
              fontSize: 13,
              fontWeight: FontWeight.normal,
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          /* 
         Padding(
            padding: const EdgeInsets.only(
              right: 55,
            ),
            child: CustomText1(text: text1),
          ),*/
          //   Container(
          //width: double.infinity,
          //height: double.infinity,
          //    color: const Color.fromRGBO(64, 68, 143, 1),
          //  ),
        ],
      ),
    );
  }
}

class CustomWallet3 extends StatelessWidget {
  final String text;

  CustomWallet3({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.43,
      height: MediaQuery.of(context).size.height * 0.17,
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
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.18,
              height: MediaQuery.of(context).size.height * 0.079,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/afgan.jpg', // Replace with your image asset path
                  width: 180.0,
                  height: 180.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, top: 13),
            child: CustomText(
              text: text,
              fontSize: 13,
              fontWeight: FontWeight.normal,
            ),
          ),

          /* 
         Padding(
            padding: const EdgeInsets.only(
              right: 55,
            ),
            child: CustomText1(text: text1),
          ),*/
          //   Container(
          //width: double.infinity,
          //height: double.infinity,
          //    color: const Color.fromRGBO(64, 68, 143, 1),
          //  ),
        ],
      ),
    );
  }
}
