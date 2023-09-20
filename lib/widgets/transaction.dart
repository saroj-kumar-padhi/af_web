import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      // spreadRadius: 5,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 225, 218, 218),
                              borderRadius: BorderRadius.circular(12.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  // spreadRadius: 5,
                                  blurRadius: 6,
                                  offset: Offset(0, 3),
                                ),
                              ]),
                          child: Center(
                            child: CustomText(
                              text: 'Start date',
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 225, 218, 218),
                            borderRadius: BorderRadius.circular(12.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                // spreadRadius: 5,
                                blurRadius: 6,
                                offset: Offset(0, 3),
                              ),
                            ]),
                        child: Center(
                          child: CustomText(
                            text: 'End date',
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 225, 218, 218),
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    // spreadRadius: 5,
                                    blurRadius: 6,
                                    offset: Offset(0, 3),
                                  ),
                                ]),
                            child: const Center(
                                child: Text('Search',
                                    //'Address Details',
                                    style: TextStyle(
                                        fontFamily:
                                            'Inter', // Use the fontFamily you specified in pubspec.yaml
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 24, 56,
                                            113))) // You can adjust the weight as needed
                                )),
                      ),
                    ])),
            Expanded(
              child: ListView.builder(
                  itemCount: 20, // Number of items in your list
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 15),
                      child: Container(
                          height: MediaQuery.of(context).size.height * 0.07,
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
                              ])),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
