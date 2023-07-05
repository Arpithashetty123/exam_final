import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/login_with_phone/nav_container.dart';
import 'package:flutter_application_1/apps/features/utils/newPages/background_page.dart';
import 'package:flutter_application_1/apps/features/utils/newPages/like_share.dart';
import 'package:flutter_application_1/apps/features/utils/pagestyle.dart';
import 'package:flutter_application_1/myrouter/routes.dart';
import '../../utils/newPages/new_file_container.dart';

class Nearbuy extends StatelessWidget {
  const Nearbuy({Key? key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        final mediaQuery = MediaQuery.of(context);
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
                      const Positioned(
                        bottom: 170,
                        right: 30,
                        child: LikeShareWidget(),
                      ),
                      Positioned(
                        bottom: 130,
                        left: 20,
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
                top: mediaQuery.padding.top + 16.0,
                left: 16.0,
                child: Row(
                  children: [
                    GestureDetector(
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
                bottom: mediaQuery.padding.bottom + 20,
                left: 15,
                child: const NavContainer(),
              ),
            ],
          ),
        );
      },
    );
  }
}
