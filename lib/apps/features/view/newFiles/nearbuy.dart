import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/login_with_phone/nav_container.dart';
import 'package:flutter_application_1/apps/features/utils/newPages/background_page.dart';
import 'package:flutter_application_1/apps/features/utils/newPages/like_share.dart';
import 'package:flutter_application_1/apps/features/utils/pagestyle.dart';
import 'package:flutter_application_1/myrouter/routes.dart';
import '../../utils/newPages/new_file_container.dart';
class Nearbuy extends StatelessWidget {
  const Nearbuy({super.key,});
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
                  const BackGroundPage(image: "assets/images/boy_image.png"),
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
                          "Meet Javed's son fahim...",
                          style: postColour(),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            top: screenHeight * 0.08,
            left: screenWidth * 0.05,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const NewContainer(
                    borderColor: Colors.white,
                    containerColor: Colors.transparent,
                    iconColor: Colors.white,
                    iconData: Icons.arrow_back,
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.forYouPage);
                  },
                  child: Text(
                    "Nearbuy",
                    style: loginColour(),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.03,
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
            child: const NavContainer(),
          ),
        ],
      ),
    );
  }
}
