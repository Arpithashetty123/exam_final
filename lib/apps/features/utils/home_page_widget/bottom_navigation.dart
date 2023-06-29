import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/view/recordingPages/cam_access_page.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

import '../../view/accountPages/account_page.dart';

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
      height: 100,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildIconButton(Icons.home, 0),
          _buildIconButton(Ionicons.navigate_circle, 1),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentIndex == 2 ?   const Color.fromARGB(255, 8, 47, 65): const Color.fromRGBO(102, 211, 246, 1)
            ),
            child: IconButton(
              icon: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return CameAccessPage();
                },));
                onTabTapped(2);
              },
            ),
          ),
          _buildIconButton(Entypo.heart, 3),
          _buildProfileIconButton(Icons.person, 4),
        ],
      ),
    );
  }

  Widget _buildIconButton(IconData icon, int index) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentIndex == index ? Color.fromRGBO(33, 39, 56, 1) : Colors.grey.shade200,
      ),
      child: Center(
        child: IconButton(
          icon: Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {
            onTabTapped(index);
          },
        ),
      ),
    );
  }

  Widget _buildProfileIconButton(IconData icon, int index) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentIndex == index ? Color.fromRGBO(33, 39, 56, 1) : Colors.grey.shade200,
      ),
      child: Center(
        child: IconButton(
          icon: Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainInfoPage()),
            );
            onTabTapped(index);
          },
        ),
      ),
    );
  }
}
