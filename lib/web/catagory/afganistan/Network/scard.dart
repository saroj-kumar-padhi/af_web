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
import 'package:afghan_net/Afgan_List_UI/voice_calling1.dart/mtn_w2.dart';
import 'package:afghan_net/Afgan_List_UI/voice_calling1.dart/roshan_m.dart';
import 'package:afghan_net/Afgan_List_UI/voice_calling1.dart/roshan_w.dart';
import 'package:afghan_net/Afgan_List_UI/voice_calling1.dart/salaam_m.dart';
import 'package:afghan_net/Afgan_List_UI/voice_calling1.dart/salaam_w.dart';
import 'package:afghan_net/recharge.dart';
import 'package:afghan_net/web/catagory/afganistan/Network/Bundles/Internet_Bundle/salaam.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScardWeb extends StatelessWidget {
  final String text;
  final String text1;
  final imageUrl;
  const ScardWeb(
      {super.key,
      required this.imageUrl,
      required this.text1,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: All_Drawer(),
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: CustomText(
            text: text1,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.35,
            height: MediaQuery.of(context).size.height * 0.27,
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
          height: MediaQuery.of(context).size.height * 0.07,
        ),
        InkWell(
          onTap: () {
            if (text == "Salaam" && text1 == "Internet Data Bundle") {
              Get.to(() => IbSalaamMbWeb());
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

            else if (text == "Salaam" && text1 == 'Voice Calling Bundle') {
              Get.to(() => VbSalaamMb());
            } else if (text == "AWCC" && text1 == 'Voice Calling Bundle') {
              Get.to(() => VbAWCCMb());
            } else if (text == 'MTN' && text1 == 'Voice Calling Bundle') {
              Get.to(() => MtnMonthlyVc());
            } else if (text == 'Roshan' && text1 == 'Voice Calling Bundle') {
              Get.to(() => VbRoshanMb());
            } else if (text == 'Etisalat' && text1 == 'Voice Calling Bundle') {
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
            width: MediaQuery.of(context).size.width * 0.55,
            height: MediaQuery.of(context).size.height * 0.1,
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
                      fontSize: 23,
                      fontWeight: FontWeight.normal),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                ]),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        (text == 'Etisalat' ||
                text == 'AWCC' && text1 == 'Voice Calling Bundle')
            ? SizedBox()
            : InkWell(
                onTap: () {
                  if (text == "Salaam" && text1 == "Internet Data Bundle") {
                    Get.to(() => IbSalaamWb());
                  } else if (text == "AWCC" &&
                      text1 == "Internet Data Bundle") {
                    Get.to(() => IbAWCCWb());
                  } else if (text == 'MTN' && text1 == "Internet Data Bundle") {
                    Get.to(() => MtnWeeklyIb());
                  } else if (text == 'Roshan' &&
                      text1 == "Internet Data Bundle") {
                    Get.to(() => IbRoshanWb());
                  }

                  //Voice

                  else if (text == "Salaam" &&
                      text1 == 'Voice Calling Bundle') {
                    Get.to(() => VbSalaamWb());
                  } else if (text == 'MTN' && text1 == 'Voice Calling Bundle') {
                    Get.to(() => MtnWeeklyVc());
                  } else if (text == 'Roshan' &&
                      text1 == 'Voice Calling Bundle') {
                    Get.to(() => vbRoshanWB());
                  } else {
                    Get.to(() => vbRoshanWB());
                  }
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.55,
                  height: MediaQuery.of(context).size.height * 0.1,
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
                          fontSize: 23,
                          fontWeight: FontWeight.normal),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      )
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
