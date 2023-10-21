import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/Afgan_List_UI/status/dialog_box.dart';
import 'package:afghan_net/App_DrawerContents/reseller_management.dart';
import 'package:afghan_net/catagory.dart';
import 'package:afghan_net/web/HomePageWeb.dart';
import 'package:afghan_net/web/widgets/container.dart';
import 'package:afghan_net/widgets/textWeb.dart';
import 'package:afghan_net/widgets/transaction.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class All_Drawer extends StatelessWidget {
  const All_Drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage("assets/drawerback.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            accountName: Padding(
              padding: EdgeInsets.only(top: 25),
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
              Get.to(() => HomePageWeb());
            },
          ),
          ListTile(
            leading: Image.asset(
              'assets/category-icon-2048x2048-n1l7ihy5.png',
              height: 25,
              width: 25,
            ),
            // const Icon(Icons.category),
            title: const Text(' Category '),
            onTap: () {
              Get.to(() => ListViewPage());
            },
          ),
          ListTile(
            leading: Image.asset(
              'assets/order.png',
              height: 25,
              width: 25,
            ),
            //const Icon(Icons.arrow_outward_rounded),
            title: const Text(' Orders '),
            onTap: () {
              Get.to(() => OrderPage1());
            },
          ),
          ListTile(
            leading: Image.asset(
              'assets/transaction1.jpg',
              height: 25,
              width: 25,
            ),
            title: const Text(' Transactions '),
            onTap: () {
              Get.to(() => TransactionPage());
            },
          ),
          ListTile(
            leading: const Icon(Icons.manage_accounts),
            title: const Text(' Reseller management '),
            onTap: () {
              Get.to(() => Reseller());
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
