import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Reseller extends StatelessWidget {
  const Reseller({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text("Reseller Management"),
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back))),
      ),
      body: Scaffold(body:
      ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical:5),
            child: Card(
              color: Colors.white,
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.person,color: Colors.blue,),
                title: Text("View Resellers"),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 15,)),
              ),
            ),
          ),

          Padding(
            padding:const EdgeInsets.symmetric(horizontal: 10,vertical:5),
            child: Card(
              color: Colors.white,
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.publish,color: Colors.blue,),
                title: Text("Push Balance"),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 15,)),
            
              ),
            ),
          ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical:5),
              child: Card(
                color: Colors.white,
                elevation: 4,
                child: ListTile(
                leading: Icon(Icons.credit_card,color: Colors.blue,),
                title: Text("Credit Statement"),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 15,)),
                        ),
              ),
            ),

             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical:5),
              child: Card(
                color: Colors.white,
                elevation: 4,
                child: ListTile(
                leading: Icon(Icons.approval_outlined,color:Colors.blue,),
                title: Text("Approve Balance Request"),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 15,)),
                        ),
              ),
            ),

              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical:5),
              child: Card(
                color: Colors.white,
                elevation: 4,
                child: ListTile(
                leading: Icon(Icons.app_registration,color:Colors.blue,),
                title: Text("Register New Reseller"),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 15,)),
                        ),
              ),
            ),
        ],
      )
       ,),
    );
  }
}