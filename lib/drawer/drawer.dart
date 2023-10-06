// import 'package:flutter/material.dart';

// class DrawerPage extends StatelessWidget {
//   final String title;

//   const DrawerPage({Key? key, required this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//         backgroundColor: Colors.blue,
//       ),
//       body: const Center(
//           child: Text(
//         'A drawer is an invisible side screen.',
//         style: TextStyle(fontSize: 20.0),
//       )),
//       drawer: Drawer(
//         child: ListView(
//           padding: const EdgeInsets.all(0),
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.green,
//               ), //BoxDecoration
//               child: UserAccountsDrawerHeader(
//                 decoration: BoxDecoration(color: Colors.green),
//                 accountName: Padding(
//                   padding: EdgeInsets.only(top: 30),
//                   child: Text(
//                     "Abhishek Mishra",
//                     style: TextStyle(fontSize: 18),
//                   ),
//                 ),
//                 accountEmail: Text("abhishekm977@gmail.com"),
//                 currentAccountPictureSize: Size.square(50),
//                 currentAccountPicture: CircleAvatar(
//                   backgroundColor: Color.fromARGB(255, 165, 255, 137),
//                   child: Text(
//                     "A",
//                     style: TextStyle(fontSize: 30.0, color: Colors.blue),
//                   ), //Text
//                 ), //circleAvatar
//               ), //UserAccountDrawerHeader
//             ), //DrawerHeader
//             ListTile(
//               leading: const Icon(Icons.home),
//               title: const Text(' Home '),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.category),
//               title: const Text(' Category '),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.category),
//               title: const Text(' Transactions '),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.arrow_outward_rounded),
//               title: const Text(' Orders '),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.monetization_on_rounded),
//               title: const Text(' Saved Videos '),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.settings),
//               title: const Text(' Settings '),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.call),
//               title: const Text(' Customer service group '),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),

//             ListTile(
//               leading: const Icon(Icons.call),
//               title: const Text(' Contact '),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),

//             ListTile(
//               leading: const Icon(Icons.logout),
//               title: const Text(' LogOut '),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ), //Drawer
//     );
//   }
// }
