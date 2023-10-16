import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomWalletWeb extends StatelessWidget {
  final String text;
  final String text1;
  CustomWalletWeb({super.key, required this.text, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.height * 0.2,
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
                padding: const EdgeInsets.only(top: 25, left: 20),
                child: CustomText(
                  text: text,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25, right: 15),
                child: Icon(
                  Icons.credit_card,
                  color: Color.fromRGBO(64, 68, 143, 1),
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 85,
            ),
            child: CustomText(
              text: text1,
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
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

class CustomWalletWeb3 extends StatelessWidget {
  final String text;
  final String image;

  CustomWalletWeb3({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.15,
        height: MediaQuery.of(context).size.height * 0.2,
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
                width: MediaQuery.of(context).size.width * 0.08,
                height: MediaQuery.of(context).size.height * 0.13,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: ClipOval(
                  child: Image.asset(
                    image, // Replace with your image asset path
                    width: 140.0,
                    height: 140.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Center(
              child: CustomText(
                text: text,
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
