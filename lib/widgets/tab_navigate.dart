import 'package:afghan_net/Afgan_List_UI/afganistan.dart';
import 'package:afghan_net/catagory.dart';
import 'package:afghan_net/order.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/iran.dart/iran.dart';
import 'package:afghan_net/widgets/turkey.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabDemo extends StatefulWidget {
  @override
  _TabDemoState createState() => _TabDemoState();
}

class _TabDemoState extends State<TabDemo> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          //  width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            color: Colors.white,
          ),

          child: TabBar(
            indicatorColor: Color.fromRGBO(64, 68, 143, 1),
            labelColor: Color.fromRGBO(64, 68, 143, 1),
            // dividerColor: Color.fromRGBO(64, 68, 143, 1),
            // overlayColor:  Color.fromRGBO(64, 68, 143, 1),
            controller: _tabController,
            tabs: const [
              Tab(
                text: 'Catagory',
              ),
              //Tab(text: 'Order'),
              Tab(text: 'Order'),
            ],
          ),
        ),
        //))
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
            child: Flexible(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.023,
                  ),
                  InkWell(
                    onTap: () => Get.to(AfganistanPage()),
                    child: const MyListTile(
                      imageItems: 'assets/afgan.jpg',
                      items2: 'Credit Card',
                      items3: 'Internet Bundle',
                      item1: 'Afganistan',
                      items4: 'Top Up',
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.to(IranList()),
                    child: const MyListTile(
                      imageItems: 'assets/iran.jpeg',
                      items2: 'Credit Card',
                      items3: 'Internet Bundle',
                      item1: 'Iran',
                      items4: 'Top Up',
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.to(TurkeyList()),
                    child: const MyListTile(
                      imageItems: 'assets/turkey.jpeg',
                      items2: 'Credit Card',
                      items3: 'Internet Bundle',
                      item1: 'Turkey',
                      items4: 'Top Up',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.027,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
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
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.027,
                  ),
                  Row(
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
                        CustomWallet3(
                          text: 'Crypto Currency',
                          image: 'assets/currency.jpeg',
                        ),
                      ]),
                ],
              ),
            ),
          ),
          OrderPage()
        ],
      ),
    );
  }
}
