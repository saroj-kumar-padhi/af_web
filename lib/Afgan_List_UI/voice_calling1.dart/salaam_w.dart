import 'package:afghan_net/Afgan_List_UI/product_list.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';

class VbSalaamWb extends StatelessWidget {
  const VbSalaamWb({super.key});

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
            itemCount: vbSalaamwb.length, // Number of items in your list
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 15),
                child: CustomWallet7(
                  image: 'assets/salaam1.png',
                  text: vbSalaamwb[index],
                  text2: vbSalaamwb12[index],
                  text1: vbSalaamwb2[index],
                ),
              );
            }));
  }
}
