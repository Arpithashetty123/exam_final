import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/login_with_phone/nav_container.dart';
import 'package:flutter_application_1/apps/features/utils/newPages/background_page.dart';
import 'package:flutter_application_1/apps/features/utils/newPages/like_share.dart';
import 'package:flutter_application_1/apps/features/utils/pagestyle.dart';

import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:easy_search_bar/easy_search_bar.dart';
import '../../../../myrouter/routes.dart';
import '../../utils/newPages/new_file_container.dart';

class FollowingPage extends StatefulWidget {
  const FollowingPage({super.key});

  @override
  State<FollowingPage> createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage> {
 String searchValue = '';
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemCount: 10,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  BackGroundPage(image: "assets/images/photo-of-child-playing-with-wooden-blocks-5.png"),
                  const Positioned(
                    bottom: 170,
                    right: 30,
                    child: LikeShareWidget(),
                  ),
                  Positioned(
                      bottom: 120,
                      left: 20,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "@javed.chang",
                              style: postColour(),
                            ),
                            Text(
                              "pear me <3 Latifa's Summer Photo\nShootDo like and share!",
                              style: postColour(),
                            )
                          ])),
                  const Positioned(
                      right: 55,
                      bottom: 418,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      )),
                ],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.followingPage);
                  },
                  child: Text(
                    "Following",
                    style: postColour(),
                  ),
                ),
                Text(
                  "For You",
                  style: postColour(),
                ),
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
          const Positioned(
            bottom: 25,
            left: 15,
            child: NavContainer(),
          ),
        ],
      ),
    );
  }
}
