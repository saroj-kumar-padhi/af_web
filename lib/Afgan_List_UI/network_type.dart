import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/subscription_card.dart';

class NetworTypePage extends StatelessWidget {
  const NetworTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: CustomText(
            text: 'Network',
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      //  backgroundColor: Color.fromARGB(255, 206, 203, 203),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () => Get.to(Scard(
                        imageUrl:
                            'assets/WhatsApp Image 2023-09-18 at 10.43.55 PM.jpeg',
                        text1: 'Voice Calling',
                      )),
                  child: CustomWallet5(
                      text: 'Salaam', image: 'assets/salaam1.png')),
              InkWell(
                onTap: () => Get.to(Scard(
                  imageUrl:
                      'assets/WhatsApp Image 2023-09-18 at 10.43.55 PM.jpeg',
                  text1: 'Voice Calling',
                )),
                child: CustomWallet5(text: 'AWCC', image: 'assets/AWCC1.png'),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () => Get.to(Scard(
                  imageUrl:
                      'assets/WhatsApp Image 2023-09-18 at 10.43.55 PM.jpeg',
                  text1: 'Voice Calling',
                )),
                child: CustomWallet5(text: 'MTN', image: 'assets/MTN1.jpeg'),
              ),
              InkWell(
                onTap: () => Get.to(Scard(
                  imageUrl:
                      'assets/WhatsApp Image 2023-09-18 at 10.43.55 PM.jpeg',
                  text1: 'Voice Calling',
                )),
                child:
                    CustomWallet5(text: 'Roshan', image: 'assets/roshan1.png'),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          InkWell(
            onTap: () => Get.to(Scard(
              imageUrl: 'assets/WhatsApp Image 2023-09-18 at 10.43.55 PM.jpeg',
              text1: 'Voice Calling',
            )),
            child:
                CustomWallet5(text: 'Etisalat', image: 'assets/etisalat1.png'),
          ),
        ],
      ),
    );
  }
}
