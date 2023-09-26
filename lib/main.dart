import 'package:afghan_net/Afgan_List_UI/internet_bundle/AWCC_m.dart';
import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/irancell.dart';
import 'package:afghan_net/Afgan_List_UI/pin_phone.dart';
import 'package:afghan_net/Afgan_List_UI/topUpCard/AWCC_t.dart';
import 'package:afghan_net/Afgan_List_UI/topUpCard/etisalat_t.dart';
import 'package:afghan_net/Afgan_List_UI/topUpCard/mtn_t.dart';
import 'package:afghan_net/Afgan_List_UI/topUpCard/roshan_t.dart';
import 'package:afghan_net/Afgan_List_UI/topUpCard/salaam_t.dart';
import 'package:afghan_net/catagory.dart';
import 'package:afghan_net/iran.dart/list.dart/top_up/topUp.dart';
import 'package:afghan_net/other_network/diamond.dart';
import 'package:afghan_net/other_network/pubg.dart';
import 'package:afghan_net/other_network/vimo.dart';
import 'package:afghan_net/other_network/vpn_category.dart';
import 'package:afghan_net/splash.dart';
import 'package:afghan_net/iran.dart/iran.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'Afgan_List_UI/status/dialog_box.dart';
import 'Afgan_List_UI/status/receipt_voucher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
        home: Vpn_all());
    // PubgPage());
    //TopUpIran());
    //IbAWCCMb());
    //IranList());
    //AWCCT());
    //Splash());
    //PinPhonePAge()
    //ListViewPage()
    //Vpn_Category()
  }
}
