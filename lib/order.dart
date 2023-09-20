import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/widgets/order_Container.dart';
import 'package:afghan_net/widgets/text.dart';

import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // drawer: Drawer(),
        // appBar: AppBar(
        //   title: Padding(
        //     padding: const EdgeInsets.only(left: 80),
        //     child: CustomText(
        //       text: 'Order',
        //       fontSize: 19,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        // ),
        body: ListView.builder(
            itemCount: 20, // Number of items in your list
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/etisalat-200x160-1.png', // Replace with your image asset path
                            width: 100.0,
                            height: 100.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: 'Product 1',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.005,
                            ),
                            CustomText1(text: '781144198'),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //  crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomText1(text: 'Sell:142.0 AF'),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.005,
                            ),
                            CustomText1(text: 'Buy:152.0 AF'),
                          ],
                        ),
                      ]),
                ),
              );
            }));
  }
}
