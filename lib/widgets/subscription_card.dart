import 'package:afghan_net/Afgan_List_UI/internet_bundle/AWCC_m.dart';
import 'package:afghan_net/Afgan_List_UI/internet_bundle/AWCC_w.dart';
import 'package:afghan_net/Afgan_List_UI/internet_bundle/MTN_m.dart';
import 'package:afghan_net/Afgan_List_UI/internet_bundle/MTN_w.dart';
import 'package:afghan_net/Afgan_List_UI/internet_bundle/etisalat_m.dart';
import 'package:afghan_net/Afgan_List_UI/internet_bundle/roshan_m.dart';
import 'package:afghan_net/Afgan_List_UI/internet_bundle/roshan_w.dart';
import 'package:afghan_net/Afgan_List_UI/internet_bundle/salaam_m.dart';
import 'package:afghan_net/Afgan_List_UI/internet_bundle/salaam_w.dart';
import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/Afgan_List_UI/topUpCard/AWCC_t.dart';
import 'package:afghan_net/Afgan_List_UI/topUpCard/etisalat_t.dart';
import 'package:afghan_net/Afgan_List_UI/topUpCard/mtn_t.dart';
import 'package:afghan_net/Afgan_List_UI/topUpCard/roshan_t.dart';
import 'package:afghan_net/Afgan_List_UI/topUpCard/salaam_t.dart';
import 'package:afghan_net/Afgan_List_UI/voice_calling1.dart/AWCC_m.dart';
import 'package:afghan_net/Afgan_List_UI/voice_calling1.dart/Mtn_m.dart';
import 'package:afghan_net/Afgan_List_UI/voice_calling1.dart/etisalat_m.dart';
import 'package:afghan_net/Afgan_List_UI/voice_calling1.dart/roshan_m.dart';
import 'package:afghan_net/Afgan_List_UI/voice_calling1.dart/salaam_m.dart';
import 'package:afghan_net/recharge.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Scard extends StatelessWidget {
  final String text;
  final String text1;
  final imageUrl;
  const Scard(
      {super.key,
      required this.imageUrl,
      required this.text1,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: All_Drawer(),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: CustomText(
            text: text1,
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.07,
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    // spreadRadius: 5,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ]),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        InkWell(
          onTap: () {
            if (text == "Salaam" && text1 == "Internet Data Bundle") {
              Get.to(() => IbSalaamMb());
            } else if (text == "AWCC" && text1 == "Internet Data Bundle") {
              Get.to(() => IbAWCCMb());
            } else if (text == 'MTN' && text1 == "Internet Data Bundle") {
              Get.to(() => MtnMonthlyIB());
            } else if (text == 'Roshan' && text1 == "Internet Data Bundle") {
              Get.to(() => IbRoshanMb());
            } else if (text == 'Etisalat' && text1 == "Internet Data Bundle") {
              Get.to(() => IbETisalatMb());
            }

            // voice wala

            else if (text == "Salaam" && text1 == "Voice Data Bundle") {
              Get.to(() => VbSalaamMb());
            } else if (text == "AWCC" && text1 == "Voice Data Bundle") {
              Get.to(() => VbAWCCMb());
            } else if (text == 'MTN' && text1 == "Voice Data Bundle") {
              Get.to(() => MtnMonthlyVc());
            } else if (text == 'Roshan' && text1 == "Voice Data Bundle") {
              Get.to(() => VbRoshanMb());
            } else if (text == 'Etisalat' && text1 == "Voice Data Bundle") {
              Get.to(() => VbEtisalatMb());
            }

            //top up wala

            else if (text == "Salaam" && text1 == "Top Up Card") {
              Get.to(() => SalaamT());
            } else if (text == "AWCC" && text1 == "Top Up Card") {
              Get.to(() => AWCCT());
            } else if (text == 'MTN' && text1 == "Top Up Card") {
              Get.to(() => MtnT());
            } else if (text == 'Roshan' && text1 == "Top Up Card") {
              Get.to(() => RoshanT());
            } else if (text == 'Etisalat' && text1 == "Top Up Card") {
              Get.to(() => ETisalatT());
            } else {
              Get.to(() => SalaamT());
            }
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    // spreadRadius: 5,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ]),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/monthly1.png',
                    fit: BoxFit.cover,
                  ),
                  CustomText(
                      text: 'Monthly',
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                  Icon(Icons.arrow_forward_ios),
                ]),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        (text == 'Etisalat' || text == 'AWCC')?SizedBox():InkWell(
          onTap: () {
            if (text == "Salaam" && text1 == "Internet Data Bundle") {
              Get.to(() => IbSalaamWb());
            } else if (text == "AWCC" && text1 == "Internet Data Bundle") {
              Get.to(() => IbAWCCWb());
            } else if (text == 'MTN' && text1 == "Internet Data Bundle") {
              Get.to(() => MtnWeeklyIb());
            } else if (text == 'Roshan' && text1 == "Internet Data Bundle") {
              Get.to(() => IbRoshanWb());
            } else {
              Get.to(() => MtnMonthlyIB()); // defalut
            }
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    // spreadRadius: 5,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/weekly.png',
                  fit: BoxFit.cover,
                ),
                CustomText(
                    text: 'Weekly',
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.17,
        ),
      ]),
    );
  }
}
