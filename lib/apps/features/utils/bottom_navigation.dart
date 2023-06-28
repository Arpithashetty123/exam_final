import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/authentications/mainscreen.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

import '../view/account_page.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.grey.shade200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: currentIndex == 0 ? Colors.blue : Colors.grey,
            ),
            onPressed: () {
              onTabTapped(0);
            },
          ),
          IconButton(
            icon: Icon(
              Ionicons.navigate_circle,
              color: currentIndex == 1 ? Colors.blue : Colors.grey,
            ),
            onPressed: () {
              onTabTapped(1);
            },
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentIndex == 2 ? Colors.blue : Colors.lightBlue,
            ),
            child: IconButton(
              icon: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
              onPressed: () {
                onTabTapped(2);
              },
            ),
          ),
          IconButton(
            icon: Icon(
              Entypo.heart,
              color: currentIndex == 3 ? Colors.blue : Colors.grey,
            ),
            onPressed: () {
              onTabTapped(3);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: currentIndex == 4 ? Colors.blue : Colors.grey,
            ),
            onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MainInfoPage();
              },));
              onTabTapped(4);
            },
          ),
        ],
      ),
    );
  }
}
