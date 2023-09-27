import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TurkeyNetwork extends StatelessWidget {
  const TurkeyNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: All_Drawer(),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: CustomText(
            text: 'Turkey Network',
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
                  //  onTap: () => Get.to(IronIb()),
                  child: CustomWallet5(
                      text: 'Turkcell', image: 'assets/turkcell.png')),
              InkWell(
                //  onTap: () => Get.to(RightIb()),
                child: CustomWallet5(
                    text: 'Turk Telecom', image: 'assets/turk_telekom.png'),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          InkWell(
            // onTap: () => Get.to(),
            child: CustomWallet5(
                text: 'Vodafone', image: 'assets/Logo_vodafone_new.png'),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
        ],
      ),
    );
  }
}
