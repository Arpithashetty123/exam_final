import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'iconbutton.dart';

class LikeShareWidget extends StatelessWidget {
  const LikeShareWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
          children: [
              CircleAvatar(
        radius: 28,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 26,
          backgroundImage: AssetImage("assets/images/Ellipse 19.png"),
        ),
      ),
      SizedBox(
              height: 25,
            ),
            IconButtonPage(
              icon: AntDesign.heart,
              count: 396,
            ),
            SizedBox(
              height: 18,
            ),
            
            IconButtonPage(
              icon: MaterialCommunityIcons.message_processing_outline,
              count: 396,
            ),
            SizedBox(
              height: 18,
            ),
            IconButtonPage(
              icon: FontAwesome.share,
              count: 396,
            ),
            SizedBox(
              height: 18,
            ),
          ],
        );
  }
}