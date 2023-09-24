import 'package:afghan_net/Afgan_List_UI/afganistan.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/iran.dart/iran.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:afghan_net/widgets/turkey.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListViewPage extends StatelessWidget {
  ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 80),
            child: CustomText(
              text: 'Catagory',
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 206, 203, 203),
        body: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          InkWell(
            onTap: () => Get.to(AfganistanPage()),
            child: const MyListTile(
              imageItems: 'assets/afgan.jpg',
              items2: 'Credit Card',
              items3: 'Internet Bundle',
              item1: 'Afganistan',
              items4: 'Voice Calling Bundle',
            ),
          ),
          InkWell(
            onTap: () => Get.to(IranList()),
            child: const MyListTile(
              imageItems: 'assets/iran.jpeg',
              items2: 'Credit Card',
              items3: 'Internet Bundle',
              item1: 'Iran',
              items4: 'Voice Calling Bundle',
            ),
          ),
          InkWell(
            onTap: () => Get.to(TurkeyList()),
            child: const MyListTile(
              imageItems: 'assets/turkey.jpeg',
              items2: 'Credit Card',
              items3: 'Internet Bundle',
              item1: 'Turkey',
              items4: 'Voice Calling Bundle',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.027,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            CustomWallet3(
              text: 'Vimo USD',
              image: 'assets/vimo.jpeg',
            ),
            CustomWallet3(
              text: 'UC PUBG',
              image: 'assets/pubg.jpeg',
            ),
            CustomWallet3(
              text: 'Imo Diamond',
              image: 'assets/imo.jpeg',
            ),
          ]),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.027,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomWallet3(
                  text: 'TikTok Coin',
                  image: 'assets/tiktok.jpeg',
                ),
                CustomWallet3(
                  text: 'VPN',
                  image: 'assets/vpn.jpeg',
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.27,
                  height: MediaQuery.of(context).size.height * 0.13,
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
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 7,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.18,
                          height: MediaQuery.of(context).size.height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/currency.jpeg', // Replace with your image asset path
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: CustomText(
                          text: 'Crypto',
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Center(
                        child: CustomText(
                          text: 'Currency',
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
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
