import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/myrouter/routes.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
class NavContainer extends StatefulWidget {
  const NavContainer({super.key});

  @override
  State<NavContainer> createState() => _NavContainerState();
}
class _NavContainerState extends State<NavContainer> {
  int currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(50),
      ),
      height: 80,
      width: 380,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () { 
              Navigator.pushNamed(context,MyRoutes.homeScreen);
              onTabTapped(0);},
            child: buildIcon(Icons.home, currentIndex, 0),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context,MyRoutes.findPage);
               onTabTapped(1);
               },

            child: buildIcon(Ionicons.compass, currentIndex, 1),
          ),
          GestureDetector(
           onTap: () {
              Navigator.pushNamed(context,MyRoutes.mainInfoPage);
               onTabTapped(2);
               },
            child: buildIcon(Icons.person, currentIndex, 2),
          ),
        ],
      ),
    );
  }
}

Widget buildIcon(
  IconData icon,
  int currentIndex,
  int index,
) {
  return Icon(
    icon,
    size: 40,
    color: currentIndex == index
        ? const Color.fromRGBO(33, 39, 56, 1)
        : Colors.grey.shade500,
  );
}
