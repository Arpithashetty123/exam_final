import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/view/recordingPages/post_page.dart';

import '../../../../myrouter/routes.dart';
import 'circle_avatr_widget.dart';

class RecordedPageContainer extends StatelessWidget {
  const RecordedPageContainer(
      {Key? key, required this.height, required this.width});
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.postPage);
              },
              child: buildCircleAvatar(
                "assets/images/Ellipse 8.png",
                Colors.pink,
              )),
       
          GestureDetector(
              onTap: () {
              Navigator.pushNamed(context, MyRoutes.postPage);
              },
              child: buildCircleAvatar(
                 "assets/images/Ellipse 11.png", Colors.green)),
     
          GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const PostPage();
                  },
                ));
              },
              child: buildCircleAvatar(
                  "assets/images/Ellipse 19.png", Colors.purple)),
        ],
      ),
    );
  }
}