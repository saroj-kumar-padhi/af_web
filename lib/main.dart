import 'package:afghan_net/List_UI/pin_phone.dart';
import 'package:afghan_net/catagory.dart';
import 'package:afghan_net/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'List_UI/status/dialog_box.dart';
import 'List_UI/status/receipt_voucher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Splash());
    //PinPhonePAge()
    //ListViewPage()
  }
}
