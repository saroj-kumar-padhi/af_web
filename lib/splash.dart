import 'package:afghan_net/home_page.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });

    return Scaffold(
      body: Center(
        // Customize this with your splash screen content
        child: Image.asset(
          'assets/splash.png',
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}
