import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

import 'accountPages/account_page.dart';


class CustomNavigationBar extends StatelessWidget {
  void navigateToHome(BuildContext context) {
   
  }

  void navigateToCompass(BuildContext context) {
    // Navigation logic for the Compass screen
  }

  void navigateToProfile(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return MainInfoPage();
    },));
  }

  Widget buildIcon(IconData icon, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Icon(
        icon,
        size: 40,
        color: Colors.grey.shade300,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 50,
            left: 40,
            width: 350,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(50),
              ),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildIcon(Icons.home, () => navigateToHome(context)),
                  buildIcon(Ionicons.compass, () => navigateToCompass(context)),
                  buildIcon(Icons.person, () => navigateToProfile(context)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
