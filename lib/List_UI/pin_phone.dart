import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';

class PinPhonePAge extends StatelessWidget {
  const PinPhonePAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: CustomText(
            text: 'Details',
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.045,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 30),
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 219, 217, 217),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      // spreadRadius: 5,
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    ),
                  ] // Adjust the radius as needed
                  // border: Border.all(),
                  ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 23,
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.65,
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // Adjust the radius as needed
                          // border: Border.all(),
                        ),
                        child: TextFormField(
                          //controller: _textController,
                          decoration: const InputDecoration(
                            labelText: 'Phone number',
                            labelStyle: TextStyle(
                              fontFamily:
                                  'Inter', // Use the fontFamily you specified in pubspec.yaml
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                            // hintText: 'Type something here',

                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.65,
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // Adjust the radius as needed
                          // border: Border.all(),
                        ),
                        child: TextFormField(
                          //controller: _textController,
                          decoration: const InputDecoration(
                            labelText: 'Pincode',
                            labelStyle: TextStyle(
                              fontFamily:
                                  'Inter', // Use the fontFamily you specified in pubspec.yaml
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                            // hintText: 'Type something here',

                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.056,
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
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors
                              .white) // You can adjust the weight as needed
                      ),
                )),
          ),
        ],
      ),
    );
  }
}
