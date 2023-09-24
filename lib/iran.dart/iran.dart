import 'package:afghan_net/catagory.dart';
import 'package:afghan_net/iran.dart/iran_networktype.dart';
import 'package:afghan_net/iran.dart/iran_recharge.dart';
import 'package:afghan_net/Afgan_List_UI/network_type.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class IranList extends StatelessWidget {
  const IranList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 60),
            child: CustomText(
              text: 'Iran Network',
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.009),
              Center(
                child: InkWell(
                  onTap: () {
                    Get.to(IranNetworkType());
                  },
                  child: const ListViewContainer(
                    items2: 'Internet Data Bundle',
                    imageItems:
                        'assets/WhatsApp Image 2023-09-18 at 10.43.54 PM.jpeg',
                  ),
                ),
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Get.to(IranNetworkType());
                  },
                  child: const ListViewContainer(
                    items2: 'Top Up Card',
                    imageItems:
                        'assets/WhatsApp Image 2023-09-18 at 10.43.54 PM (1).jpeg',
                  ),
                ),
              ),
            ]));
  }
}
