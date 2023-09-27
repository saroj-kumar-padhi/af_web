import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/widgets/subscription_card.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubsciptionCard extends StatelessWidget {
  const SubsciptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: All_Drawer(),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: CustomText(
            text: 'Internet Data Bundle',
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Scard(
          text1: 'Internet Data Bundle',
          imageUrl: 'assets/WhatsApp Image 2023-09-18 at 10.43.54 PM.jpeg'),
    );
  }
}

class TopUpCard extends StatelessWidget {
  const TopUpCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: CustomText(
            text: 'Top Up Card',
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Scard(
          text1: 'Top Up Card',
          imageUrl: 'assets/WhatsApp Image 2023-09-18 at 10.43.54 PM (1).jpeg'),
    );
  }
}

class IranIDB extends StatelessWidget {
  const IranIDB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: CustomText(
            text: 'Internet Data Bundle',
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Scard(
          text1: 'Internet Data Bundle',
          imageUrl: 'assets/WhatsApp Image 2023-09-18 at 10.43.54 PM.jpeg'),
    );
  }
}

class IranTopUp extends StatelessWidget {
  const IranTopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: CustomText(
            text: 'Top UP Card',
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Scard(
          text1: 'Top Up Card',
          imageUrl: 'assets/WhatsApp Image 2023-09-18 at 10.43.54 PM (1).jpeg'),
    );
  }
}

class TurkeyTopUpCard extends StatelessWidget {
  const TurkeyTopUpCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: CustomText(
            text: 'Top Up Card',
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Scard(
          text1: 'Top Up Card',
          imageUrl: 'assets/WhatsApp Image 2023-09-18 at 10.43.54 PM (1).jpeg'),
    );
  }
}
