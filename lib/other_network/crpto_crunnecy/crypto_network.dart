import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import '../../widgets/contaierwallat.dart';

class CCPagr extends StatelessWidget {
  const CCPagr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: All_Drawer(),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: CustomText(
            text: 'Crypto Currency',
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
                  child:
                      CustomWallet5(text: 'USDT', image: 'assets/USDT.jpeg')),
              InkWell(
                //  onTap: () => Get.to(RightIb()),
                child: CustomWallet5(
                    text: 'Tron (TRX)', image: 'assets/Tron.jpeg'),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          InkWell(
            // onTap: () => Get.to(),
            child:
                CustomWallet5(text: 'BitCoin', image: 'assets/Bitcoin.svg.png'),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
        ],
      ),
    );
  }
}
