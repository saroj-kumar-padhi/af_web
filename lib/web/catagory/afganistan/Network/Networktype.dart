import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/Afgan_List_UI/topUpCard/AWCC_t.dart';
import 'package:afghan_net/Afgan_List_UI/topUpCard/etisalat_t.dart';
import 'package:afghan_net/Afgan_List_UI/topUpCard/mtn_t.dart';
import 'package:afghan_net/Afgan_List_UI/topUpCard/roshan_t.dart';
import 'package:afghan_net/Afgan_List_UI/topUpCard/salaam_t.dart';
import 'package:afghan_net/web/catagory/afganistan/Network/scard.dart';
import 'package:afghan_net/web/catagory/afganistan/widgets.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/widgets/subscription_card.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NetworTypePageWeb extends StatelessWidget {
  final String image;
  final String text;

  const NetworTypePageWeb({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: All_Drawer(),
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: CustomText(
            text: 'Network',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      //  backgroundColor: Color.fromARGB(255, 206, 203, 203),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () => text == 'Top up Card'
                          ? Get.to(() => SalaamT())
                          : Get.to(() => ScardWeb(
                                text: "Salaam",
                                imageUrl: image,
                                text1: text,
                              )),
                      child: CustomWallet5Web(
                          text: 'Salaam', image: 'assets/salaam1.png')),
                  InkWell(
                    onTap: () => text == 'Top up Card'
                        ? Get.to(() => AWCCT())
                        : Get.to(() => ScardWeb(
                              text: 'AWCC',
                              imageUrl: image,
                              text1: text,
                            )),
                    child:
                        CustomWallet5Web(text: 'AWCC', image: 'assets/AWCC1.png'),
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
                    onTap: () => text == 'Top up Card'
                        ? Get.to(() => MtnT())
                        : Get.to(() => ScardWeb(
                              text: 'MTN',
                              imageUrl: image,
                              text1: text,
                            )),
                    child: CustomWallet5Web(text: 'MTN', image: 'assets/MTN1.jpeg'),
                  ),
                  InkWell(
                    onTap: () => text == 'Top up Card'
                        ? Get.to(() => RoshanT())
                        : Get.to(() => ScardWeb(
                              text: 'Roshan',
                              imageUrl: image,
                              text1: text,
                            )),
                    child: CustomWallet5Web(
                        text: 'Roshan', image: 'assets/roshan1.png'),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              InkWell(
                onTap: () => text == 'Top up Card'
                    ? Get.to(() => ETisalatT())
                    : Get.to(() => ScardWeb(
                          text: 'Etisalat',
                          imageUrl: image,
                          text1: text,
                        )),
                child: CustomWallet5Web(
                    text: 'Etisalat', image: 'assets/etisalat1.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
