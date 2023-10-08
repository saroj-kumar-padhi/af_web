import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/my_vpn.dart';
import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/widgets/text.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VPNOrderPage extends StatelessWidget {
  const VPNOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: All_Drawer(),
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 80),
            child: CustomText(
              text: 'VPN Orders',
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: 5, // Number of items in your list
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                child: InkWell(
                  onTap: () => Get.to(() => MyVpn()),
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              // spreadRadius: 5,
                              blurRadius: 6,
                              offset: Offset(0, 3),
                            ),
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(
                            text: 'Irancell VPN',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                          CustomText(
                            text: '30 GB / One Month',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                          CustomText(
                            text: '01/06/2023 - 30/06/2023',
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                          ),
                        ],
                      )),
                ),
              );
            }));
  }
}
