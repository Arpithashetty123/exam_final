import 'package:flutter/material.dart';

// final List<String> images = [
//   "assets/images/Ellipse 8.png",
//   "assets/images/Ellipse 11.png",
//   "assets/images/Ellipse 19.png",
// ];

Widget buildCircleAvatar(String imagePath, Color backgroundColor) {
  return CircleAvatar(
    radius: 28,
    backgroundColor: backgroundColor,
    child: CircleAvatar(
      radius: 25,
      backgroundImage: AssetImage(imagePath),
    ),
  );
}
