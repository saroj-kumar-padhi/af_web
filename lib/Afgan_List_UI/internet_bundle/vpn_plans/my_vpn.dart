import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';

class MyVpn extends StatelessWidget {
  const MyVpn({super.key});

  @override
  Widget build(BuildContext context) {
     final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      primary: Colors.white,
      minimumSize: Size(88, 44),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
      backgroundColor: Color.fromARGB(255, 126, 156, 180),
    );
    return Scaffold(
      drawer: All_Drawer(),
        appBar: AppBar(
          centerTitle: true,
          title: CustomText(
            text: 'MY VPN',
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text("VPN Name",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Image.asset("assets/QRCode.jpeg"),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(border: Border.all(width: 0.5,color: Colors.grey),borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Text("vless://95e4e8bb-9481-47e7-e8a7-f41232221733@de5v3i.game-man.ir:443?type=tcp&path=/&host=ponisha.ir&headerType=http&security=tls&fp=firefox&alpn=h2,http/1.1&allowInsecure=1#ariapay-de5v3-678",style: TextStyle(color: Colors.grey),),),
            ),

              SizedBox(height: 30,),

              TextButton(
      style: flatButtonStyle,
      onPressed: () {
        print('Button pressed');
      },
      child: Text('Copy link'),
    ),






          ],
        ),
    );
  }
}