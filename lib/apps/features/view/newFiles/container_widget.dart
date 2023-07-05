import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/recordings/circle_avatr_widget.dart';

class MichealConatiner extends StatelessWidget {
  const MichealConatiner(
      {super.key,
      required this.assetImage,
      required this.backgroundColor,
      required this.circleAvatarcolor,
      required this.mainText,
      required this.subText});
  final String assetImage;
  final Color backgroundColor;
  final Color circleAvatarcolor;
  final String mainText;
  final String subText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 80,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          buildCircleAvatar(assetImage, circleAvatarcolor),
          Text(
            mainText,
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            subText,
            style: TextStyle(color: Colors.purple, fontSize: 12),
          )
        ],
      ),
    );
  }
}
