import 'package:afghan_net/Afgan_List_UI/afganistan.dart';
import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/other_network/crpto_crunnecy/crypto_network.dart';
import 'package:afghan_net/other_network/diamond.dart';
import 'package:afghan_net/other_network/pubg.dart';
import 'package:afghan_net/other_network/tikTok.dart';
import 'package:afghan_net/other_network/vimo.dart';
import 'package:afghan_net/other_network/vpn_category.dart';
import 'package:afghan_net/turkey/turkey.dart';
import 'package:afghan_net/web/catagory/Iran/Iran.dart';
import 'package:afghan_net/web/catagory/afganistan/afganistan.dart';
import 'package:afghan_net/web/catagory/crypto/crypto.dart';
import 'package:afghan_net/web/catagory/diamond/diamond.dart';
import 'package:afghan_net/web/catagory/pubg/pubg.dart';
import 'package:afghan_net/web/catagory/tiktok.dart';
import 'package:afghan_net/web/catagory/turkey/turkey.dart';
import 'package:afghan_net/web/catagory/vimo/vimo.dart';
import 'package:afghan_net/web/catagory/vpn/vpn.dart';
import 'package:afghan_net/web/drawer/drawer.dart';
import 'package:afghan_net/web/widgets/container.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/iran.dart/iran.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:afghan_net/widgets/turkey.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Catagory_web extends StatelessWidget {
  Catagory_web({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: All_Drawer_Web(),
        appBar: AppBar(
          title: Align(
            alignment: Alignment.center,
            child: CustomText(
              text: 'Catagory',
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 206, 203, 203),
        body: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () => Get.to(() => AfganistanPageWeb()),
                        child: CustomWalletWeb3(
                          image: 'assets/afgan.jpg',
                          text: 'Afghanistan',
                        ),
                      ),
                      InkWell(
                        onTap: () => Get.to(() => IranListWeb()),
                        child: CustomWalletWeb3(
                          image: 'assets/iran.jpeg',
                          text: 'Iran',
                        ),
                      ),
                      InkWell(
                        onTap: () => Get.to(() => TurkeyListWeb()),
                        child: CustomWalletWeb3(
                          image: 'assets/turkey.jpeg',
                          text: 'Turkey',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () => Get.to(() => VimoPageWeb()),
                        child: CustomWalletWeb3(
                          text: 'Vimo USD',
                          image: 'assets/vimo.jpeg',
                        ),
                      ),
                      InkWell(
                        onTap: () => Get.to(() => PubgPageWeb()),
                        child: CustomWalletWeb3(
                          text: 'UC PUBG',
                          image: 'assets/pubg.jpeg',
                        ),
                      ),
                      InkWell(
                        onTap: () => Get.to(() => DiamondPageWeb()),
                        child: CustomWalletWeb3(
                          text: 'Imo Diamond',
                          image: 'assets/imo.jpeg',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () => Get.to(() => TikTokPageWeb()),
                        child: CustomWalletWeb3(
                          text: 'TikTok Coin',
                          image: 'assets/tiktok.jpeg',
                        ),
                      ),
                      InkWell(
                        onTap: () => Get.to(() => Vpn_CategoryWeb()),
                        child: CustomWalletWeb3(
                          text: 'VPN',
                          image: 'assets/vpn.jpeg',
                        ),
                      ),
                      InkWell(
                        onTap: () => Get.to(() => CCPagrWeb()),
                        child: CustomWalletWeb3(
                            image: 'assets/currency.jpeg',
                            text: 'Crypto Currency'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ]));
  }
}

class MyListTile extends StatelessWidget {
  final String item1;
  final String items2;
  final String items3;
  final String items4;
  final imageItems;

  const MyListTile({
    super.key,
    required this.imageItems,
    required this.items2,
    required this.items3,
    required this.item1,
    required this.items4,
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
                    Text(items2 as String,
                        //'Address Details',
                        style: const TextStyle(
                            fontFamily:
                                'Inter', // Use the fontFamily you specified in pubspec.yaml
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(89, 83, 83,
                                1)) // You can adjust the weight as needed
                        ),
                    Text(items3 as String,
                        //'Address Details',
                        style: const TextStyle(
                            fontFamily:
                                'Inter', // Use the fontFamily you specified in pubspec.yaml
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(89, 83, 83,
                                1)) // You can adjust the weight as needed
                        ),
                    Text(items4 as String,
                        //'Address Details',
                        style: const TextStyle(
                            fontFamily:
                                'Inter', // Use the fontFamily you specified in pubspec.yaml
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
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

class ListViewContainer extends StatelessWidget {
  final String items2;

  final imageItems;

  const ListViewContainer({
    super.key,
    required this.imageItems,
    required this.items2,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.1,
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
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                color: Colors.white,
                //  borderRadius: BorderRadius.circular(14.0),
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
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.2,

                // Adjust the height
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(items2 as String,
                //'Address Details',
                style: const TextStyle(
                    fontFamily:
                        'Inter', // Use the fontFamily you specified in pubspec.yaml
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color.fromRGBO(
                        89, 83, 83, 1)) // You can adjust the weight as needed
                ),
          )
        ],
      ),
    ));
  }
}
