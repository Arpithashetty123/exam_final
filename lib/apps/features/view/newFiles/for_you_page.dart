import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/login_with_phone/nav_container.dart';
import 'package:flutter_application_1/apps/features/utils/newPages/background_page.dart';
import 'package:flutter_application_1/apps/features/utils/newPages/like_share.dart';
import 'package:flutter_application_1/apps/features/utils/pagestyle.dart';
import 'package:flutter_application_1/myrouter/routes.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

import '../../utils/newPages/new_file_container.dart';

class ForYouPage extends StatefulWidget {
  const ForYouPage({super.key});

  @override
  State<ForYouPage> createState() => _ForYouPageState();
}

class _ForYouPageState extends State<ForYouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      BackGroundPage(image: "assets/images/pexels-photo-7.png"),
      Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Following",
              style: postColour(),
            ),
              GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.findPage);
              },
            child:Text(
              "For You",
              style: postColour(),
            ),),
          
              const NewContainer(
                borderColor: Colors.blue,
                containerColor: Colors.blue,
                iconColor: Colors.white,
                iconData: Fontisto.search,
              ),
            
            const NewContainer(
              borderColor: Colors.white,
              containerColor: Colors.white,
              iconColor: Colors.blue,
              iconData: AntDesign.videocamera,
            )
          ],
        ),
      ),
      Positioned(right: 20, bottom: 30, child: NavContainer()),
      Positioned(right: 30, bottom: 150, child: LikeShareWidget()),
      Positioned(right: 45, bottom: 398, child:
          CircleAvatar(
            radius: 12,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.blue,
              child: Icon(Icons.add,color: Colors.white,size: 15,),
            ),
          ) 
          ),
          
          
      Positioned(
          bottom: 120,
          left: 20,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "@javed.chang",
              style: postColour(),
            ),
            Text(
              "pear me <3 Latifa's Summer Photo\nShootDo like and share!",
              style: postColour(),
            )
          ]))
    ]));
  }
}
