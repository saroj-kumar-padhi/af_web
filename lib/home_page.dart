import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/widgets/tab_navigate.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'widgets/contaierwallat.dart';

class HomePage extends StatelessWidget {
  final List<String> assetImages = [
    'assets/homepage.jpeg',
    'assets/home_2.jpeg',
    'assets/home_3.jpeg',
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: CustomText(
                text: 'Seller',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.27,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.14,
              height: MediaQuery.of(context).size.height * 0.065,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/th.jpg', // Replace with your image asset path
                  width: 180.0,
                  height: 180.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
      key: _scaffoldKey,
      drawer: All_Drawer(),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 15),
                child: Row(
                  children: [
                    CustomWallet(
                      text: 'Balance',
                      text1: '0.0 Toman',
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.052,
                    ),
                    CustomWallet(
                      text: 'Debit',
                      text1: '0.0 Toman',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 15),
                child: Row(
                  children: [
                    CustomWallet(
                      text: 'Sales',
                      text1: '0.0 Toman',
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.052,
                    ),
                    CustomWallet(
                      text: 'Benefits',
                      text1: '0.0 Toman',
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            width: double.infinity, // Width as per design
            height: MediaQuery.of(context).size.height *
                0.25, // Height as per design

            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(10.0), // BorderRadius as per design
            ),
            // Background color as per design (rgba(255, 255, 255, 1))

            child: Expanded(
              flex: 1,
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                ),
                items: assetImages.map((imagePath) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        //  width: MediaQuery.of(context).size.width - 5,
                        margin: const EdgeInsets.symmetric(horizontal: 3.0),
                        decoration: const BoxDecoration(
                          color: Colors.amber,
                        ),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              //  width: MediaQuery.of(context).size.height * 0.5,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: const BoxDecoration(
                // Color.fromRGBO(99, 101, 148, 1),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4), topLeft: Radius.circular(4)),
              ),
              child: TabDemo(),
            ),
          ),
        ]),
      ),
    );
  }
}
