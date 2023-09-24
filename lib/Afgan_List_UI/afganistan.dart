import 'package:afghan_net/catagory.dart';
import 'package:afghan_net/Afgan_List_UI/network_type.dart';
import 'package:afghan_net/widgets/subscription_card.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AfganistanPage extends StatelessWidget {
  const AfganistanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: CustomText(
            text: 'Afganistan Network',
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () => Get.to(NetworTypePage()),
              // Scard(
              //   text1: 'Internet Data Calling',
              //   imageUrl:
              //       'assets/WhatsApp Image 2023-09-18 at 10.43.54 PM.jpeg')),
              child: const ListViewContainer(
                items2: 'Internet Data Bundle',
                imageItems:
                    'assets/WhatsApp Image 2023-09-18 at 10.43.54 PM.jpeg',
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.008),
          Center(
            child: InkWell(
              onTap: () => Get.to(
                (NetworTypePage()),
                // Scard(
                //   text1: 'Voice Calling Bundle',
                //   imageUrl:
                //       'assets/WhatsApp Image 2023-09-18 at 10.43.55 PM.jpeg',
                // ),
              ),
              child: const ListViewContainer(
                items2: 'Voice Calling Bundle',
                imageItems:
                    'assets/WhatsApp Image 2023-09-18 at 10.43.55 PM.jpeg',
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.008),
          const Center(
            child: ListViewContainer(
              items2: 'Top up Card',
              imageItems:
                  'assets/WhatsApp Image 2023-09-18 at 10.43.54 PM (1).jpeg',
            ),
          )
        ],
      ),
    );
  }
}
