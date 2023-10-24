import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/web/catagory/afganistan/widgets.dart';
import 'package:afghan_net/web/drawer/drawer.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TurkeyNetworkWeb extends StatelessWidget {
  const TurkeyNetworkWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: All_Drawer_Web(),
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: CustomText(
            text: 'Turkey Network',
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      //  backgroundColor: Color.fromARGB(255, 206, 203, 203),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  //  onTap: () => Get.to(IronIb()),
                  child: CustomWallet5Web(
                      text: 'Turkcell', image: 'assets/turkcell.png')),
              InkWell(
                //  onTap: () => Get.to(RightIb()),
                child: CustomWallet5Web(
                    text: 'Turk Telecom', image: 'assets/turk_telekom.png'),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          InkWell(
            // onTap: () => Get.to(),
            child: CustomWallet5Web(
                text: 'Vodafone', image: 'assets/Logo_vodafone_new.png'),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
        ],
      ),
    );
  }
}
