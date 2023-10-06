import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/iran.dart/iran_recharge.dart';
import 'package:afghan_net/iran.dart/list.dart/IronIB.dart';
import 'package:afghan_net/iran.dart/list.dart/hamrah_IB.dart';
import 'package:afghan_net/iran.dart/list.dart/righttell_IB.dart';
import 'package:afghan_net/iran.dart/list.dart/smart_IB.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/widgets/subscription_card.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IranNetworkType extends StatelessWidget {
  // final String image;
  // final String text;
  const IranNetworkType({
    super.key,
    // required this.image, required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: All_Drawer(),
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
                  onTap: () => Get.to(() => IronIb(
                      // image:
                      //     'assets/mtn-irancell-logo-27B4584F73-seeklogo.com.png',
                      // text: 'Ironcell',
                      )),
                  child: CustomWallet5(
                      text: 'Ironcell',
                      image:
                          'assets/mtn-irancell-logo-27B4584F73-seeklogo.com.png')),
              InkWell(
                onTap: () => Get.to(() => RightIb(
                    // image: 'assets/Logo-persian_preview-removebg-preview.png',
                    // text: 'Righttell',
                    )),
                child: CustomWallet5(
                    text: 'Righttell',
                    image: 'assets/Logo-persian_preview-removebg-preview.png'),
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
                onTap: () => Get.to(() => HamrahIB()),
                child: CustomWallet5(
                    text: 'Hamrah avval',
                    image: 'assets/Hamrah_avval_logo-removebg-preview.png'),
              ),
              InkWell(
                onTap: () => Get.to(() => SmartIb()),
                child: CustomWallet5(
                    text: 'Smart Shatell',
                    image: 'assets/download__1_-removebg-preview.png'),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          // InkWell(
          //   onTap: () => Get.to(Scard(
          //     imageUrl: 'assets/WhatsApp Image 2023-09-18 at 10.43.55 PM.jpeg',
          //     text1: 'Voice Calling',
          //   )),
          //   child:
          //       CustomWallet5(text: 'Etisalat', image: 'assets/etisalat1.png'),
          // ),
        ],
      ),
    );
  }
}
