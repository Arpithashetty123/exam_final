import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/pagestyle.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/Button_widgets/container_widget.dart';
import '../../utils/newPages/defaulttab_contoller.dart';
import '../../utils/profilepages/countSection.dart';
import '../../utils/profilepages/profileapp_bar.dart';
import 'container_widget.dart';

class AddChildPage extends StatefulWidget {
  const AddChildPage({super.key});

  @override
  State<AddChildPage> createState() => _AddChildPageState();
}

class _AddChildPageState extends State<AddChildPage> {
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
                            'Kim Alvirez',
                            style: GoogleFonts.poppins(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '@mike_ally/kim',
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
                                countsection(),
                              ),
                              SizedBox(
                                width: screenWidth * 0.04,
                              ),
                              buildCountSection(
                                'Following',
                                followingCount,
                                countsection(),
                              ),
                              SizedBox(
                                width: screenWidth * 0.04,
                              ),
                              buildCountSection(
                                'Post',
                                followingCount,
                                countsection(),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight * 0.01,
                          ),
                          Text(
                            "Kim Loves to",
                            style: GoogleFonts.poppins(color: Colors.black),
                          ),
                          SizedBox(
                            height: screenHeight * 0.025,
                          ),
                          Row(
                            children: [
                              LoginButton(
                                borderRadius: 20,
                                height: 40,
                                width: 130,
                                containerColor: const Color.fromARGB(255, 227, 227, 227),
                                childWidget: Center(
                                  child: Text(
                                    "Follow Kim",
                                    style: GoogleFonts.poppins(color: Colors.green),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.04,
                              ),
                              LoginButton(
                                borderRadius: 20,
                                height: 40,
                                width: 130,
                                containerColor: const Color.fromARGB(255, 227, 227, 227),
                                childWidget: Center(
                                  child: Text(
                                    "Follow All",
                                    style: GoogleFonts.poppins(color: Colors.blue),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          Row(
                            children: [
                              const MichealConatiner(
                                textColor: Colors.pink,
                                subText: "Son",
                                mainText: "Abel",
                                assetImage: 'assets/images/Ellipse 8.png',
                                backgroundColor: Color.fromARGB(255, 242, 192, 209),
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
                                backgroundColor: Color.fromARGB(255, 213, 230, 244),
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
                                backgroundColor: Color.fromARGB(255, 235, 197, 242),
                                circleAvatarcolor: Colors.purple,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          const TabContoller(
                            imagePath: "assets/images/pexels-photo-1.png",
                            imagePathTwo: "assets/images/pexels-photo-2.png",
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: screenHeight * 0.02,
                      right: screenWidth * 0.03,
                      child:  Image.asset("assets/images/Ellipse 41.png",scale: 0.85,),
                        ),
                    Positioned(
                        top: screenHeight * 0.160,
                      right: screenWidth * 0.14,
                      child: Text(
                        "Child",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
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
