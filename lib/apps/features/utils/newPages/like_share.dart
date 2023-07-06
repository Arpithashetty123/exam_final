import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'comment_file.dart';
import 'iconbutton.dart';
import 'package:comment_box/comment/comment.dart';

class LikeShareWidget extends StatelessWidget {
  const LikeShareWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
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
        const SizedBox(
          height: 10,
        ),

        // IconButtonPage(
        //   icon: MaterialCommunityIcons.message_processing_outline,
        //   count: 396,
        // ),
        // SizedBox(
        //   height: 18,
        // )
        IconButton(
            onPressed: () {
       showModalBottomSheet(
        shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
    ),
  ),
  context: context,
  builder: (context) {
    return   SizedBox(
      height: 650,
      child:TestMe()
    );
  },
         );  
           },
            icon: const Icon(
              MaterialCommunityIcons.message_processing_outline,
              color: Colors.white,
              size: 35,
            )),
        const Text(
          "300",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 18,
        ),
        const IconButtonPage(
          icon: FontAwesome.share,
          count: 396,
        ),
        const SizedBox(
          height: 18,
        ),
      ],
    );
  }
}
