import 'package:afghan_net/List_UI/product_list.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';

class IbRoshanWb extends StatelessWidget {
  const IbRoshanWb({super.key});

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
              text: 'Weekly',
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: ibRoshanwb.length, // Number of items in your list
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: CustomWallet6(
                  image: 'assets/roshan1.png',
                  text: ibRoshanwb[index],
                  //  text2: 'MTN to MTN',
                  text1: ibRoshanwb2[index],
                ),
              );
            }));
  }
}
