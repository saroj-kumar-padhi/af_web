import 'package:afghan_net/Afgan_List_UI/afganistan.dart';
import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/irancell.dart';
import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/my_vpn.dart';
import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/catagory.dart';
import 'package:afghan_net/iran.dart/iran.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:afghan_net/widgets/turkey.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Vpn_Category extends StatelessWidget {
  const Vpn_Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: All_Drawer(),
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 95),
            child: CustomText(
              text: 'VPN',
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.006,
          ),
          InkWell(
            onTap: () => Get.to(() => Irancell()),
            child: const MyListTile(
              imageItems: 'assets/Vpn_iran.jpeg',
              item1: 'VPN for Irancell',
            ),
          ),
          InkWell(
            onTap: () => Get.to(Vpn_all()),
            child: const MyListTile(
              imageItems: 'assets/Vpn_all.jpeg',
              item1: 'VPN for all Network',
            ),
          ),
          InkWell(
            onTap: () => Get.to(() => MyVpn()),
            child: const MyListTile(
              imageItems: 'assets/buy-VPN-anonymously-icon.png',
              item1: 'My VPN',
            ),
          ),
        ]));
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
    return ListTile(
        title: Container(
      width: MediaQuery.of(context).size.width * 0.9,
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.07,
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(item1,
                        //'Address Details',
                        style: const TextStyle(
                            fontFamily:
                                'Inter', // Use the fontFamily you specified in pubspec.yaml
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(89, 83, 83,
                                1)) // You can adjust the weight as needed
                        ),
                  ]),
            ),
          )
        ],
      ),
    ));
  }
}
