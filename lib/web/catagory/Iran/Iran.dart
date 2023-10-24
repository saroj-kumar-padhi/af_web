import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/catagory.dart';
import 'package:afghan_net/iran.dart/iran_networktype.dart';
import 'package:afghan_net/iran.dart/iran_recharge.dart';
import 'package:afghan_net/Afgan_List_UI/network_type.dart';
import 'package:afghan_net/iran.dart/list.dart/top_up/topUp.dart';
import 'package:afghan_net/web/catagory/Iran/Network/Bundle/topup.dart';
import 'package:afghan_net/web/catagory/Iran/Network/networktype.dart';
import 'package:afghan_net/web/catagory/afganistan/widgets.dart';
import 'package:afghan_net/web/drawer/drawer.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class IranListWeb extends StatelessWidget {
  const IranListWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: All_Drawer_Web(),
        appBar: AppBar(
          title: Align(
            alignment: Alignment.center,
            child: CustomText(
              text: 'Iran Network',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.046),
              Center(
                child: InkWell(
                  onTap: () {
                    Get.to(IranNetworkTypeWeb());
                  },
                  child: const ListViewContainerWeb(
                    items2: 'Internet Data Bundle',
                    imageItems:
                        'assets/WhatsApp Image 2023-09-18 at 10.43.54 PM.jpeg',
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Center(
                child: InkWell(
                  onTap: () {
                    Get.to(TopUpIranWeb());
                  },
                  child: const ListViewContainerWeb(
                    items2: 'Top Up Card',
                    imageItems:
                        'assets/WhatsApp Image 2023-09-18 at 10.43.54 PM (1).jpeg',
                  ),
                ),
              ),
            ]));
  }
}
