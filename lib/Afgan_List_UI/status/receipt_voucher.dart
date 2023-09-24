import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReceiptDialog extends StatelessWidget {
  const ReceiptDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () => Get.to(_showDialogReceipt()),
          child: Container(
            child: CustomText(
                text: 'Dialog box', fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  _showDialogReceipt() {
    Get.defaultDialog(
        radius: 12.0,
        title: '',
        titleStyle: const TextStyle(
          // fontFamily: 'Inter',
          fontSize: 0.0,
          // fontWeight: FontWeight.normal,
          // color: Colors.green,
        ),
        content: Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 10),
          child: Column(children: [
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.blue,
                    size: 18,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Success',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(
                    Icons.cancel,
                    color: Colors.blue,
                    size: 18,
                  ),
                ]),
            const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
            Row(
              children: [
                CustomText(
                    text: 'Mobile Number',
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
                const SizedBox(
                  width: 35,
                ),
                CustomText(
                    text: '0780065552',
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                CustomText(
                    text: 'Ammount', fontSize: 12, fontWeight: FontWeight.bold),
                const SizedBox(
                  width: 72,
                ),
                CustomText(
                    text: '90.0', fontSize: 12, fontWeight: FontWeight.bold),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                CustomText(
                    text: 'Recharge Date',
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
                const SizedBox(
                  width: 35,
                ),
                CustomText(
                    text: '2023-09-13 20:06:16',
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ],
            )
          ]),
        ));
  }
}
