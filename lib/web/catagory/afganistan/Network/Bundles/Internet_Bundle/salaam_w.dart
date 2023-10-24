import 'package:afghan_net/Afgan_List_UI/internet_bundle/etisalat_m.dart';
import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/Afgan_List_UI/product_list.dart';
import 'package:afghan_net/web/drawer/drawer.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';

class IbWSalaamWb extends StatelessWidget {
  const IbWSalaamWb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: All_Drawer_Web(),
        appBar: AppBar(
          centerTitle: true,
          title: CustomText(
            text: 'Weekly',
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: ListView.builder(
            itemCount: ibSalaamwb.length, // Number of items in your list
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  showDialogPhone();
                },
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  child: CustomWallet6(
                    image: 'assets/salaam1.png',
                    text: ibSalaamwb[index],
                    //  text2: 'MTN to MTN',
                    text1: ibSalaamwb2[index],
                  ),
                ),
              );
            }));
  }
}
