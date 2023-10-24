import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/catagory.dart';
import 'package:afghan_net/Afgan_List_UI/network_type.dart';
import 'package:afghan_net/web/catagory/afganistan/Network/Networktype.dart';
import 'package:afghan_net/web/catagory/afganistan/widgets.dart';
import 'package:afghan_net/web/drawer/drawer.dart';
import 'package:afghan_net/widgets/subscription_card.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AfganistanPageWeb extends StatelessWidget {
  const AfganistanPageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: All_Drawer_Web(),
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: CustomText(
            text: 'Afganistan Network',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Center(
            child: InkWell(
              onTap: () => Get.to(() => NetworTypePageWeb(
                    image:
                        'assets/WhatsApp Image 2023-09-18 at 10.43.54 PM.jpeg',
                    text: 'Internet Data Bundle',
                  )),
              // Scard(
              //   text1: 'Internet Data Calling',
              //   imageUrl:
              //       'assets/WhatsApp Image 2023-09-18 at 10.43.54 PM.jpeg')),
              child: const ListViewContainerWeb(
                items2: 'Internet Data Bundle',
                imageItems:
                    'assets/WhatsApp Image 2023-09-18 at 10.43.54 PM.jpeg',
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Center(
            child: InkWell(
              onTap: () => Get.to(
                () => NetworTypePageWeb(
                  image: 'assets/WhatsApp Image 2023-09-18 at 10.43.55 PM.jpeg',
                  text: 'Voice Calling Bundle',
                ),
                // Scard(
                //   text1: 'Voice Calling Bundle',
                //   imageUrl:
                //       'assets/WhatsApp Image 2023-09-18 at 10.43.55 PM.jpeg',
                // ),
              ),
              child: const ListViewContainerWeb(
                items2: 'Voice Calling Bundle',
                imageItems:
                    'assets/WhatsApp Image 2023-09-18 at 10.43.55 PM.jpeg',
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Center(
            child: InkWell(
              onTap: () => Get.to(
                () => NetworTypePageWeb(
                  image:
                      'assets/WhatsApp Image 2023-09-18 at 10.43.54 PM (1).jpeg',
                  text: 'Top up Card',
                ),
              ),
              child: ListViewContainerWeb(
                items2: 'Top up Card',
                imageItems:
                    'assets/WhatsApp Image 2023-09-18 at 10.43.54 PM (1).jpeg',
              ),
            ),
          )
        ],
      ),
    );
  }
}
