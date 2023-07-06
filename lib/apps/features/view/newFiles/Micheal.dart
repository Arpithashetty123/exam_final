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
  const MichealPage({Key? key});
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
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const ProfileAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: screenWidth * 0.05,
                      ),
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
                            height: screenHeight * 0.02,
                          ),
                          Row(
                            children: [
                              buildCountSection(
                                'Followers',
                                followersCount,
                                cameAccessColour(),
                              ),
                              SizedBox(
                                width: screenWidth * 0.04,
                              ),
                              buildCountSection(
                                'Following',
                                followingCount,
                                cameAccessColour(),
                              ),
                              SizedBox(
                                width: screenWidth * 0.04,
                              ),
                              buildCountSection(
                                'Post',
                                followingCount,
                                cameAccessColour(),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight * 0.01,
                          ),
                          Text(
                            "Babies are god's cutest gifts.",
                            style: GoogleFonts.poppins(color: Colors.black),
                          ),
                          SizedBox(
                            height: screenHeight * 0.025,
                          ),
                          LoginButton(
                            borderRadius: 20,
                            height: 40,
                            width: 150,
                            containerColor: const Color.fromARGB(255, 25, 204, 240),
                            childWidget: Center(
                              child: Text(
                                "Following All",
                                style: GoogleFonts.poppins(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.025,
                          ),
                          Row(
                            children: [
                              const MichealConatiner(
                                textColor: Colors.pink,
                                subText: "Son",
                                mainText: "Abel",
                                assetImage: 'assets/images/Ellipse 8.png',
                                backgroundColor:
                                    Color.fromARGB(255, 242, 192, 209),
                                circleAvatarcolor: Colors.pink,
                              ),
                              SizedBox(
                                width: screenWidth * 0.04,
                              ),
                              const MichealConatiner(
                                textColor: Colors.blue,
                                subText: "Son",
                                mainText: "Kim",
                                assetImage: 'assets/images/Ellipse 11.png',
                                backgroundColor:
                                    Color.fromARGB(255, 213, 230, 244),
                                circleAvatarcolor: Colors.blue,
                              ),
                              SizedBox(
                                width: screenWidth * 0.04,
                              ),
                              const MichealConatiner(
                                textColor: Colors.purple,
                                subText: "Son",
                                mainText: "John",
                                assetImage: 'assets/images/Ellipse 19.png',
                                backgroundColor:
                                    Color.fromARGB(255, 235, 197, 242),
                                circleAvatarcolor: Colors.purple,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: screenWidth * 0.04,
                          ),
                          const TabContoller(
                            imagePath: "assets/images/Rectangle 37.png",
                            imagePathTwo: "assets/images/pexels-photo-2869318.png",
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: screenHeight * 0.03,
                      right: screenWidth * 0.04,
                        child: CircleAvatar(
                          radius: screenWidth * 0.15,
                          backgroundImage: const AssetImage("assets/images/Ellipse 32.png"),
                        ),
                      
                    ),
                    Positioned(
                      top: screenHeight * 0.165,
                      right: screenWidth * 0.12,
                      child: Text(
                        "Parent",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
