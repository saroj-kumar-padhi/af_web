import 'package:afghan_net/List_UI/product_list.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';

class IbETisalatMb extends StatelessWidget {
  const IbETisalatMb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(
              left: 90,
            ),
            child: CustomText(
              text: 'Monthly',
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: ibEtisalatmb.length, // Number of items in your list
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: CustomWallet6(
                  image: 'assets/etisalat1.png',
                  text: ibEtisalatmb[index],
                  //  text2: 'MTN to MTN',
                  text1: ibEtisalatmb2[index],
                ),
              );
            }));
  }
}
