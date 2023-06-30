import 'package:flutter/material.dart';

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
