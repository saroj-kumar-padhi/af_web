import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/iran.dart/iran_recharge.dart';
import 'package:afghan_net/iran.dart/list.dart/IronIB.dart';
import 'package:afghan_net/iran.dart/list.dart/hamrah_IB.dart';
import 'package:afghan_net/iran.dart/list.dart/righttell_IB.dart';
import 'package:afghan_net/iran.dart/list.dart/smart_IB.dart';
import 'package:afghan_net/web/catagory/Iran/Network/Bundle/Internet_bundle/IronIb.dart';
import 'package:afghan_net/web/catagory/Iran/Network/Bundle/Internet_bundle/hamrahIB.dart';
import 'package:afghan_net/web/catagory/Iran/Network/Bundle/Internet_bundle/righttell.dart';
import 'package:afghan_net/web/catagory/Iran/Network/Bundle/Internet_bundle/smartIB.dart';
import 'package:afghan_net/web/catagory/afganistan/widgets.dart';
import 'package:afghan_net/web/drawer/drawer.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/widgets/subscription_card.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IranNetworkTypeWeb extends StatelessWidget {
  // final String image;
  // final String text;
  const IranNetworkTypeWeb({
    super.key,
    // required this.image, required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: All_Drawer_Web(),
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: CustomText(
            text: 'Network',
            fontSize: 30,
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
                  onTap: () => Get.to(() => IronIbWeb(
                      // image:
                      //     'assets/mtn-irancell-logo-27B4584F73-seeklogo.com.png',
                      // text: 'Ironcell',
                      )),
                  child: CustomWallet5Web(
                      text: 'Ironcell',
                      image:
                          'assets/mtn-irancell-logo-27B4584F73-seeklogo.com.png')),
              InkWell(
                onTap: () => Get.to(() => RightIbWeb(
                    // image: 'assets/Logo-persian_preview-removebg-preview.png',
                    // text: 'Righttell',
                    )),
                child: CustomWallet5Web(
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
                onTap: () => Get.to(() => HamrahIBWeb()),
                child: CustomWallet5Web(
                    text: 'Hamrah avval',
                    image: 'assets/Hamrah_avval_logo-removebg-preview.png'),
              ),
              InkWell(
                onTap: () => Get.to(() => SmartIbWeb()),
                child: CustomWallet5Web(
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
