import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
class IconButtonPage extends StatelessWidget {
  const IconButtonPage({super.key, required this.icon, required this.count, });
  final IconData icon;
  final int count;
  @override
  Widget build(BuildContext context) {
    return LikeButton(
          size: 28,
        
          likeCountPadding: const EdgeInsets.only(top: 13,left: 12),
          circleColor:
              const CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
          bubblesColor: const BubblesColor(
            dotPrimaryColor: Color(0xff33b5e5),
            dotSecondaryColor: Color(0xff0099cc),
          ),
          likeBuilder: (bool isLiked) {
            return Icon(
            icon,
              color: isLiked ? Colors.pinkAccent.shade400 : Colors.white,
              size: 35
            );
          },
          countPostion: CountPostion.bottom,
          likeCount: count,
          countBuilder: (likeCount, isLiked, text) {
            var color = isLiked ? Colors.pinkAccent.shade400 : Colors.white;
            Widget result;
            if (count == 0) {
              result = Text(
                "love",
                style: TextStyle(color: color),
              );
            } else
              result = Text(
                text,
                style: TextStyle(color: color),
              );
            return result;
          },
          
    );
        
          
    }
}

//
//
//