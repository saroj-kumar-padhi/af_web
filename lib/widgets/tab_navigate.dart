import 'package:afghan_net/Afgan_List_UI/afganistan.dart';
import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/Afgan_List_UI/product_list.dart';
import 'package:afghan_net/Afgan_List_UI/status/dialog_box.dart';
import 'package:afghan_net/catagory.dart';
import 'package:afghan_net/order.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/iran.dart/iran.dart';
import 'package:afghan_net/widgets/dotted_line.dart';
import 'package:afghan_net/widgets/text.dart';
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
        automaticallyImplyLeading: false,
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
          SingleChildScrollView(
            child: Padding(
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
          ),

        
          Scaffold(
            
     
        body: ListView.builder(
            itemCount: 20, // Number of items in your list
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 8.5, right: 8.5, top: 15),
                child: InkWell(
                  onTap: () => _showDialog(),
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
                    child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ClipOval(
                            child: Image.asset(
                              'assets/etisalat1.png', // Replace with your image asset path
                              width: 65.0,
                              height: 70.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: 'Product 1',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.005,
                                  // width: MediaQuery.of(context).size.width * 0.01,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 32),
                                  child: CustomText1(text: '781144198'),
                                ),
                              ],
                            ),
                          ),
                          CustomText1(text: '142.0AF'),
                          // Icon(
                          //   iconsList[index],
                          //   size: 24.0,
                          //   color: colorList[index],
                          // ),
                        ]),
                  ),
                ),
              );
            }))
        ],
      ),
    );
    
  }
   _showDialog() {
    Get.defaultDialog(
      backgroundColor: Colors.white,
      title: '',
      titleStyle: TextStyle(fontSize: 0, fontWeight: FontWeight.bold),
      radius: 0.0,
      //title: 'Dialog Title',
      content: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Image.asset(
              'assets/images-removebg-preview.png', // Replace with your image asset path
              width: 60.0,
              height: 90.0,
              fit: BoxFit.cover,
            ),
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                // border: Border.all(
                //   color: Color.fromARGB(
                //       255, 148, 179, 205), // Set the border color here
                //   width: 1.0, // Set the border width here
                // ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Image.asset(
                "assets/logo9_13_4390-removebg.png", // Replace with your image asset path
                width: 80.0,
                height: 80.0,
                fit: BoxFit.cover,
              ),
            ),
            Image.asset(
              'assets/images__2_-removebg-preview (1).png', // Replace with your image asset path
              width: 30.0,
              height: 30.0,
              fit: BoxFit.cover,
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                  text: '21-Sep-2023',
                  fontSize: 9,
                  fontWeight: FontWeight.normal),
              SizedBox(
                width: 15,
              ),
              CustomText(
                  text: '12:50PM', fontSize: 9, fontWeight: FontWeight.normal),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'State:',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.green,
                      ),
                      softWrap: true, // Enable text wra
                    ),
                    Text(
                      'Pending',
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.green,
                      ),
                      softWrap: true, // Enable text wra
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                DottedLineHorizontal(
                  color: Colors.black,
                  height: 0.5,
                  lineWidth: 1.0,
                  dotWidth: 1.0,
                  spacing: 4.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: 'Network type:',
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                    CustomText(
                        text: 'MTN',
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: 'Bundle type:',
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                    CustomText(
                        text: 'Voice Calling',
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: 'Price:',
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                    CustomText(
                        text: '250 AF',
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: 'Phone no:',
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                    CustomText(
                        text: '0770770333',
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: 'Order no:',
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                    CustomText(
                        text: '1', fontSize: 13, fontWeight: FontWeight.normal),
                  ],
                ),
                DottedLineHorizontal(
                  height: 0.5,
                  lineWidth: 1.0,
                  dotWidth: 1.0,
                  spacing: 4.0,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomText(
                    text: '1000 minutes MTN to MTN ',
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: 'Price',
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                    CustomText(
                        text: '250 AF',
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                  ],
                ),
                SizedBox(
                  height: 9,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: DottedLineHorizontal(
                    color: Colors.red,
                    height: 0.5,
                    lineWidth: 1.0,
                    dotWidth: 1.0,
                    spacing: 4.0,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: CustomText(
                      text: 'Just reason Place',
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
