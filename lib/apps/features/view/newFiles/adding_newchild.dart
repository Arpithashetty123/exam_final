import 'package:flutter/cupertino.dart';
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
                      height: 20,
                    ),
                    Row(
                      children: [
                        buildCountSection(
                            'Followers', followersCount, countsection()),
                        const SizedBox(
                          width: 20,
                        ),
                        buildCountSection(
                            'Following', followingCount, countsection()),
                        const SizedBox(
                          width: 20,
                        ),
                        buildCountSection(
                            'Post', followingCount, countsection()),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Kim Loves to",
                      style: GoogleFonts.poppins(color: Colors.black),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        LoginButton(
                            borderRadius: 20,
                            height: 40,
                            width: 130,
                            containerColor: Color.fromARGB(255, 227, 227, 227),
                            childWidget: Center(
                                child: Text(
                              "Follow Kim",
                              style: GoogleFonts.poppins(color: Colors.green),
                            ))),
                        SizedBox(
                          width: 20,
                        ),
                        LoginButton(
                            borderRadius: 20,
                            height: 40,
                            width: 130,
                            containerColor: Color.fromARGB(255, 227, 227, 227),
                            childWidget: Center(
                                child: Text(
                              "Follow All",
                              style: GoogleFonts.poppins(color: Colors.blue),
                            ))),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
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
                        )
                      ],
                    ),
                    TabContoller(
                        imagePath: "assets/images/pexels-photo-1.png",
                        imagePathTwo: "assets/images/pexels-photo-2.png"),
                  ])),
          Positioned(
            top: 30,
            right: 20,
            // child: CircleAvatar(
            //   radius: 54,
            //   backgroundColor: Colors.blue,
            // child: CircleAvatar(
            //   radius: 54,
            //   backgroundColor: Colors.green,
            //  backgroundImage:
            child: Image.asset("assets/images/Ellipse 41.png"),
          ),
          //  ),
          //  ),

          Positioned(
              top: 135,
              right: 50,
              child: Text("Child",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600))),
        ])
      ]))
    ]));
  }
}
