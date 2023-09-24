import 'package:afghan_net/Afgan_List_UI/product_list.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';

class VbRoshanMb extends StatelessWidget {
  const VbRoshanMb({super.key});

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
            itemCount: vbRoshanmb.length, // Number of items in your list
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: CustomWallet8(
                  image: 'assets/roshan1.png',
                  text: vbRoshanmb[index],
                  text2: vbRoshanmb12[index],
                  //  text2: 'MTN to MTN',

                  text1: vbRoshanmb2[index],
                ),
              );
            }));
  }
}
