import 'package:afghan_net/Afgan_List_UI/afganistan.dart';
import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/irancell.dart';
import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/my_vpn.dart';
import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/catagory.dart';
import 'package:afghan_net/iran.dart/iran.dart';
import 'package:afghan_net/other_network/vpn_list.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:afghan_net/widgets/turkey.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Vpn_CategoryWeb extends StatelessWidget {
  const Vpn_CategoryWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: All_Drawer(),
        appBar: AppBar(
          title: Align(
            alignment: Alignment.center,
            child: CustomText(
              text: 'VPN',
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 160, right: 160, bottom: 25),
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            InkWell(
              onTap: () => Get.to(() => Irancell()),
              child: const MyListTile(
                imageItems: 'assets/Vpn_iran.jpeg',
                item1: 'VPN for Irancell',
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            InkWell(
              onTap: () => Get.to(Vpn_all()),
              child: const MyListTile(
                imageItems: 'assets/Vpn_all.jpeg',
                item1: 'VPN for all Network',
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            InkWell(
              onTap: () => Get.to(() => VPNOrderPage()),
              child: const MyListTile(
                imageItems: 'assets/buy-VPN-anonymously-icon.png',
                item1: 'My VPN',
              ),
            ),
          ]),
        ));
  }
}

class MyListTile extends StatelessWidget {
  final String item1;

  final imageItems;

  const MyListTile({
    super.key,
    required this.imageItems,
    required this.item1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 3,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.09,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Image.asset(
                imageItems,

                // Adjust the height
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150),
            child: Text(item1,
                //'Address Details',
                style: const TextStyle(
                    fontFamily:
                        'Inter', // Use the fontFamily you specified in pubspec.yaml
                    fontSize: 22,
                    fontWeight: FontWeight.normal,
                    color: Color.fromRGBO(
                        89, 83, 83, 1)) // You can adjust the weight as needed
                ),
          )
        ],
      ),
    );
  }
}
