import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/login_with_phone/nav_container.dart';
import 'package:flutter_application_1/myrouter/routes.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/Button_widgets/container_widget.dart';
import '../../utils/pagestyle.dart';
import '../../utils/profilepages/container_widget.dart';
import '../../utils/profilepages/countSection.dart';
import '../../utils/profilepages/profileapp_bar.dart';
import '../../utils/profilepages/tabbar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  int followersCount = 0;
  int followingCount = 0;
  int postsCount = 0;
  int taggedCount = 0;
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const ProfileAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Devanth Nair',
                              style: GoogleFonts.poppins(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '@dev.eloper',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.grey, width: 3),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(5),
                                child: CircleAvatar(
                                  radius: 80,
                                  backgroundImage:
                                      AssetImage("assets/images/profile.jpg"),
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                left: 40,
                                height: 50,
                                width: 50,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black),
                                  child: const Icon(
                                    FontAwesome.camera,
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
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
                    const SizedBox(height: 20),
                    Text("    No Bio",
                        style: GoogleFonts.poppins(fontSize: 12)),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, MyRoutes.michealPage);
                          },
                          child: LoginButton(
                              borderRadius: 20,
                              height: 40,
                              width: 130,
                              containerColor:
                                  const Color.fromARGB(255, 204, 232, 255),
                              childWidget: Center(
                                  child: Text(
                                "Edit Profile",
                                style: cameAccessColour(),
                              ))),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, MyRoutes.addChildPage);
                            },
                            child: const ProfileContainerWidget())
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const MyTabbar(),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 450,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          buildNewPostSection(),
                          buildTaggedSection(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: const NavContainer(),
    );
  }
}
