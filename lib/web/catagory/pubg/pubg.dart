import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/Afgan_List_UI/product_list.dart';
import 'package:afghan_net/web/catagory/afganistan/widgets.dart';
import 'package:afghan_net/web/drawer/drawer.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PubgPageWeb extends StatelessWidget {
  const PubgPageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: All_Drawer_Web(),
        appBar: AppBar(
          title: Align(
            alignment: Alignment.center,
            child: CustomText(
              text: 'UC PUBG',
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: pubg.length, // Number of items in your list
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding:
                    const EdgeInsets.only(left: 150, right: 150, bottom: 20),
                child: InkWell(
                  onTap: () => showDialogPhone(),
                  child: CustomWallet6Web(
                    image: 'assets/pubg (2).jpeg',
                    text: pubg[index],
                    //  text2: 'MTN to MTN',
                    text1: pubg2[index],
                  ),
                ),
              );
            }));
  }

  showDialogPhone() {
    Get.dialog(
      AlertDialog(
        title: Text(''),
        titleTextStyle: TextStyle(fontSize: 0),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 215),
              child: const Icon(
                Icons.close,
                color: Colors.black,
                size: 30,
              ),
            ),
            CustomText(
                text: 'Account Name:',
                fontSize: 25,
                fontWeight: FontWeight.bold),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 217, 214, 214),
                borderRadius: BorderRadius.circular(
                    10.0), // Adjust the border radius as needed
                border: Border.all(
                  color: Color.fromRGBO(89, 83, 83, 1),
                  width: 2.5, // Set the border width here
                ),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.all(12.0), // Adjust padding as needed
                  border: InputBorder.none, // Remove the default underline
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
                text: 'Account ID:', fontSize: 25, fontWeight: FontWeight.bold),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 217, 214, 214),
                borderRadius: BorderRadius.circular(
                    10.0), // Adjust the border radius as needed
                border: Border.all(
                  color: Color.fromRGBO(
                      89, 83, 83, 1), // Set the border color here
                  width: 2.5, // Set the border width here
                ),
              ),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.all(12.0), // Adjust padding as needed
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(46, 51, 135, 1), //
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          // spreadRadius: 5,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ]),
                  child: const Center(
                    child: Text('Confirm',
                        //'Address Details',
                        style: TextStyle(
                            fontFamily:
                                'Inter', // Use the fontFamily you specified in pubspec.yaml
                            fontSize: 27,
                            fontWeight: FontWeight.normal,
                            color: Colors
                                .white) // You can adjust the weight as needed
                        ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
