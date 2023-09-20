import 'package:afghan_net/catagory.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';

class TurkeyList extends StatelessWidget {
  const TurkeyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: CustomText(
              text: 'Turkey Network',
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(children: [
          const Center(
            child: ListViewContainer(
              items2: 'Top Up Card',
              imageItems:
                  'assets/WhatsApp Image 2023-09-18 at 10.43.54 PM (1).jpeg',
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.009),
        ]));
  }
}
