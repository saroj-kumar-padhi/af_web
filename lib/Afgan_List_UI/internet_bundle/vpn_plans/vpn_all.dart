import 'package:afghan_net/Afgan_List_UI/product_list.dart';
import 'package:afghan_net/App_DrawerContents/reseller_management.dart';
import 'package:afghan_net/widgets/contaierwallat.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Vpn_all extends StatelessWidget {
  const Vpn_all({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: All_Drawer(),
        appBar: AppBar(
          centerTitle: true,
          title: CustomText(
            text: 'VPN for all',
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: ListView.builder(
            itemCount: vpn_all.length, // Number of items in your list
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: InkWell(
                  onTap: (){
                  Get.defaultDialog(
             title: "VPN",
              middleText: "Do you want to buy this product?",
              backgroundColor: Colors.grey,
              titleStyle: TextStyle(color: Colors.white),
              middleTextStyle: TextStyle(color: Colors.white),
              textConfirm: "Confirm",
              textCancel: "Cancel",
              cancelTextColor: Colors.white,
              confirmTextColor: Colors.white,
              buttonColor: Colors.blue,
              barrierDismissible: false,
              radius: 8,
            
            );
                  },
                  child: CustomWallet6(
                    image: 'assets/Vpn_all.jpeg',
                    text: vpn_all[index],
                    //  text2: 'MTN to MTN',
                    text1: vpn_allPrice[index],
                  ),
                ),
              );
            }));
  }
}

class All_Drawer extends StatelessWidget {
  const All_Drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Drawer(
  child: ListView(
    padding: const EdgeInsets.all(0),
    children: [
      UserAccountsDrawerHeader(
        
        decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            image: AssetImage("assets/drawerback.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        accountName: Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            "Abhishek Mishra",
            style: TextStyle(fontSize: 18),
          ),
        ),
        accountEmail: Text("abhishekm977@gmail.com"),
        currentAccountPictureSize: Size.square(50),
        currentAccountPicture: CircleAvatar(
          child: Text(
            "A",
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.home),
        title: const Text(' Home '),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: const Icon(Icons.category),
        title: const Text(' Category '),
        onTap: () {
          // Get.to(()=>CatagoryPage());
        },
      ),
      ListTile(
        leading: const Icon(Icons.arrow_outward_rounded),
        title: const Text(' Orders '),
        onTap: () {
          Navigator.pop(context);
        },
      ),
     ListTile(
        leading: const Icon(Icons.manage_accounts),
        title: const Text(' Reseller management '),
        onTap: () {
          Get.to(()=>Reseller());
        },
      ),
      ListTile(
        leading: const Icon(Icons.settings),
        title: const Text(' Settings '),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: const Icon(Icons.group_add),
        title: const Text(' Customer service group '),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: const Icon(Icons.call),
        title: const Text(' Contact '),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: const Icon(Icons.logout),
        title: const Text(' LogOut '),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    ],
  ),
);
  }
}
