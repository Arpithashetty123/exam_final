import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import '../authentications/login_page.dart';
import '../utils/pagestyle.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  Future<void> _navigateToNextScreen() async {
   
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) => LoginPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 800,
              width: 800,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 225, 246, 255),
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 300,
            height: 300,
            width: 300,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 225, 246, 255),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 220,
            height: 400,
            width: 380,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 225, 246, 255),
              ),
            ),
          ),
          Positioned(
            top: 350,
            left: 160,
            child: Image.asset("assets/images/child-7.png"),
          ),
          Positioned(
            top: 352,
            left: 164,
            child: Image.asset("assets/images/child-4.png"),
          ),
          const Positioned(
            top: 180,
            right: 60,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage(
                  "assets/images/smiling-baby-biting-right-index-finger-1648374.png"),
            ),
          ),
          Positioned(
            bottom: 100,
            right: 190,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 40,
              backgroundImage:
                  AssetImage("assets/images/child-christmas-baby-cute-37664.png"),
            ),
          ),
          Positioned(
            top: 220,
            left: 70,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 60,
              backgroundImage: AssetImage("assets/images/baby-in-white-onesie-789786.png"),
            ),
          ),
          Positioned(
            bottom: 393,
            left: 100,
            child: Text("toddddler", style: toddddler1()),
          ),
          Positioned(
            bottom: 400,
            left: 100,
            child: Text("toddddler", style: toddddler()),
          ),
        ],
      ),
    );
  }
}
