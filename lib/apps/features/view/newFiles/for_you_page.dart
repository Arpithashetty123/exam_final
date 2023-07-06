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
final mediaQuery = MediaQuery.of(context);
final screenHeight = mediaQuery.size.height;
final screenWidth = mediaQuery.size.width;
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemCount: 10,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  const BackGroundPage(image: "assets/images/pexels-photo-7.png"),
                   Positioned(
                    bottom: screenHeight * 0.168,
                    right: screenWidth * 0.085,
                    child: const LikeShareWidget(),
                  ),
                  Positioned(
                     bottom: screenHeight * 0.13,
                    left: screenWidth * 0.05,
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
                   Positioned(
                      bottom: screenHeight * 0.430,
                      right: screenHeight * 0.055,
                      child: const CircleAvatar(
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
            padding:  EdgeInsets.only( top: screenHeight * 0.08,),
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
           Positioned(
             bottom: screenHeight * 0.03,
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
            child: NavContainer(),
          ),
        ],
      ),
    );
  }
}
