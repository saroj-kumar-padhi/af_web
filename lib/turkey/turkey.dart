import 'package:afghan_net/catagory.dart';
import 'package:afghan_net/turkey/turkey_network.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';

class TurkeyList extends StatelessWidget {
  const TurkeyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: All_Drawer(),
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: CustomText(
              text: 'Turkey Network',
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(children: [
          Center(
            child: InkWell(
              onTap: () => Get.to(() => TurkeyNetwork()),
              child: ListViewContainer(
                items2: 'Internet Data Bundle',
                imageItems:
                    'assets/WhatsApp Image 2023-09-18 at 10.43.54 PM.jpeg',
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.009),
          Center(
            child: InkWell(
              onTap: () => Get.to(TurkeyNetwork()),
              child: ListViewContainer(
                items2: 'Top Up Card',
                imageItems:
                    'assets/WhatsApp Image 2023-09-18 at 10.43.54 PM (1).jpeg',
              ),
            ),
          ),
        ]));
  }
}
