import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/web/catagory/afganistan/widgets.dart';
import 'package:afghan_net/web/drawer/drawer.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CCPagrWeb extends StatelessWidget {
  const CCPagrWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: All_Drawer_Web(),
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: CustomText(
            text: 'Crypto Currency',
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
                      text: 'USDT', image: 'assets/USDT.jpeg')),
              InkWell(
                //  onTap: () => Get.to(RightIb()),
                child: CustomWallet5Web(
                    text: 'Tron (TRX)', image: 'assets/Tron.jpeg'),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          InkWell(
            // onTap: () => Get.to(),
            child: CustomWallet5Web(
                text: 'BitCoin', image: 'assets/Bitcoin.svg.png'),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
        ],
      ),
    );
  }
}
