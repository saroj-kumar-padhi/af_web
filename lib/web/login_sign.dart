import 'package:afghan_net/web/HomePageWeb.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginSignWeb extends StatefulWidget {
  LoginSignWeb({Key? key}) : super(key: key);

  @override
  _LoginSignWebState createState() => _LoginSignWebState();
}

class _LoginSignWebState extends State<LoginSignWeb> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left Column
          Container(
            width: MediaQuery.of(context).size.width *
                0.65, // Adjust the width as needed
            padding: EdgeInsets.only(top: 15, left: 15),
            child: Column(
                //  mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.06,
                        child: Image.asset(
                          'assets/logo9_13_4390-removebg.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        'Afghan Net',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  Text(
                    'Login to Your Account',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.5, color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.5, color: Colors.blue),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                          child: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        hintText: 'Password',
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.5, color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.5, color: Colors.blue),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  InkWell(
                    onTap: () => Get.to(() => HomePageWeb()),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.14,
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                        gradient:
                            LinearGradient(begin: Alignment.topCenter, colors: [
                          Colors.cyan,
                          Color.fromARGB(255, 56, 195, 214),
                          Color.fromARGB(255, 86, 177, 189)
                        ]),
                        borderRadius: BorderRadius.circular(
                            20), // Rounded shape with a radius of 15
                      ),
                      child: Center(
                        child: CustomText2(
                          text: 'Sign In',
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ]),
          ),

          // Right Container
          Container(
            width: MediaQuery.of(context).size.width * 0.35,
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                Colors.cyan,
                Color.fromARGB(255, 56, 195, 214),
                const Color.fromARGB(255, 86, 177, 189)
              ]),
            ),

            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: Image.asset(
                      'assets/logo9_13_4390-removebg.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  CustomText2(
                    text: 'New Here?',
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  CustomText2(
                    text: 'Sign up and discover a great',
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                  CustomText2(
                    text: 'amount of new opportunities!',
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  InkWell(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.12,
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            20), // Rounded shape with a radius of 15
                      ),
                      child: Center(
                        child: CustomText2(
                          text: 'Sign up',
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ]), // Adjust the width as needed
          ),
        ],
      ),
    );
  }
}
