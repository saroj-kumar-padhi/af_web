import 'package:afghan_net/widgets/tab_navigate.dart';
import 'package:afghan_net/widgets/text.dart';

import 'package:flutter/material.dart';

import 'widgets/contaierwallat.dart';

class HomePage extends StatelessWidget {
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
      drawer: Drawer(),
      body: Column(children: [
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
        InkWell(
          child: Container(
              width: double.infinity, // Width as per design
              height: MediaQuery.of(context).size.height *
                  0.25, // Height as per design

              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(10.0), // BorderRadius as per design
              ),
              // Background color as per design (rgba(255, 255, 255, 1))

              child: Image.asset(
                'assets/homepage.jpeg',
                fit: BoxFit.fill,
              )

              /*     const Center(
              child: Text(
                "Transactions",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Inter', // Font family as per design
                  fontSize: 16.0, // Font size as per design
                  fontWeight: FontWeight.w600,
                  height: 1.1875, // Font weight as per design
                  // Line height as per design
                  letterSpacing: 0.0, // Letter spacing as per design
                  // Text alignment as per design
                ),
              ),
            ),*/
              ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Expanded(
          flex: 6,
          child: Stack(alignment: Alignment.bottomRight, children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                //  width: MediaQuery.of(context).size.height * 0.5,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: const BoxDecoration(
                  // Color.fromRGBO(99, 101, 148, 1),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(4),
                      topLeft: Radius.circular(4)),
                ),
                child: TabDemo(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18, right: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        20.0), // BorderRadius as per design

                    color: Color.fromRGBO(64, 68, 143, 1)), // Bac
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.call, color: Colors.white),
                ),
              ),
            )
          ]),
        ),
      ]),
    );
  }
}
