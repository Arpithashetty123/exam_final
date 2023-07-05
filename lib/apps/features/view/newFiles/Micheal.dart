import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/pagestyle.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/Button_widgets/container_widget.dart';
import '../../utils/newPages/defaulttab_contoller.dart';
import '../../utils/profilepages/countSection.dart';
import '../../utils/profilepages/profileapp_bar.dart';
import 'container_widget.dart';

class MichealPage extends StatefulWidget {
  const MichealPage({super.key});

  @override
  State<MichealPage> createState() => _MichealPageState();
}

class _MichealPageState extends State<MichealPage> {
  int followersCount = 0;
  int followingCount = 0;
  int postsCount = 0;
  int taggedCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      const ProfileAppBar(),
      SliverList(
          delegate: SliverChildListDelegate([
        Stack(children: [
          Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Micheal Alvirez',
                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '@mike_ally',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        buildCountSection(
                            'Followers', followersCount, cameAccessColour()),
                        const SizedBox(
                          width: 20,
                        ),
                        buildCountSection(
                            'Following', followingCount, cameAccessColour()),
                        const SizedBox(
                          width: 20,
                        ),
                        buildCountSection(
                            'Post', followingCount, cameAccessColour()),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Babies are god's cutest gifts.",
                      style: GoogleFonts.poppins(color: Colors.black),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    LoginButton(
                        borderRadius: 20,
                        height: 40,
                        width: 150,
                        containerColor: Color.fromARGB(255, 25, 204, 240),
                        childWidget: Center(
                            child: Text(
                          "Following All",
                          style: GoogleFonts.poppins(color: Colors.white),
                        ))),
                    const SizedBox(
                      height: 25,
                    ),
                    const Row(
                      children: [
                        MichealConatiner(
                            subText: "Son",
                            mainText: "Abel",
                            assetImage: 'assets/images/Ellipse 8.png',
                            backgroundColor: Color.fromARGB(255, 242, 192, 209),
                            circleAvatarcolor: Colors.pink),
                        SizedBox(
                          width: 20,
                        ),
                        MichealConatiner(
                            subText: "Son",
                            mainText: "Kim",
                            assetImage: 'assets/images/Ellipse 11.png',
                            backgroundColor: Color.fromARGB(255, 213, 230, 244),
                            circleAvatarcolor: Colors.blue),
                        SizedBox(
                          width: 20,
                        ),
                        MichealConatiner(
                          subText: "Son",
                          mainText: "John",
                          assetImage: 'assets/images/Ellipse 19.png',
                          backgroundColor: Color.fromARGB(255, 235, 197, 242),
                          circleAvatarcolor: Colors.purple,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    TabContoller(
                        imagePath: "assets/images/Rectangle 37.png",
                        imagePathTwo: "assets/images/pexels-photo-2869318.png"),
                  ])),
          const Positioned(
            top: 30,
            right: 20,
            child: CircleAvatar(
              radius: 55,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                radius: 53,
                backgroundImage: AssetImage("assets/images/Ellipse 32.png"),
              ),
            ),
          ),
          Positioned(
              top: 145,
              right: 45,
              child: Text("Parent",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600))),
        ])
      ]))
    ]));
  }
}
