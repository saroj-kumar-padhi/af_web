import 'package:afghan_net/Afgan_List_UI/product_list.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';

class AWCCT extends StatelessWidget {
  const AWCCT({super.key});

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
              text: 'AWCC',
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: topUpCard.length, // Number of items in your list
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: CustomWallet6(
                  image: 'assets/AWCC1.png',
                  text: topUpCard[index],
                  //  text2: 'MTN to MTN',
                  text1: topUpCard2[index],
                ),
              );
            }));
  }
}
