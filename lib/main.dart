import 'package:afghan_net/afganistan.dart';
import 'package:afghan_net/home_page.dart';
import 'package:afghan_net/catagory.dart';
import 'package:afghan_net/login.dart';
import 'package:afghan_net/order.dart';
import 'package:afghan_net/widgets/discriptionCard.dart';
import 'package:afghan_net/widgets/subscription_card.dart';
import 'package:afghan_net/widgets/transaction.dart';
import 'package:afghan_net/widgets/turkey.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/iran.dart';

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
        home: ListViewPage());
  }
}
