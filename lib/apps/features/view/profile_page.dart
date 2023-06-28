import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/view/settings_page.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/Button_widgets/container_widget.dart';

import 'notification_page.dart';

class ProfilePage extends StatefulWidget {
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
          SliverAppBar(
            elevation: 5,
            backgroundColor: Colors.white,
            expandedHeight: 100,
            actions: [
              Badge(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(
                    Ionicons.notifications,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NotificationPage();
    },));
                  },
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
      return SettingsPage();
    },));

                },
              ),
              SizedBox(width: 20),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.only(left: 15, top: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
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
                        ),
                        SizedBox(width: 10),
                        Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 130,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.grey, width: 3),
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
                              ],
                            ),
                            Positioned(
                              bottom: 0,
                              left: 50,
                              height: 50,
                              width: 50,
                              child: Container(

                                decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue),
                                child: Icon(FontAwesome.camera,color: Colors.white,),
                              ))
                          ],
                        ),
                      ],
                    ),
                    Row(
                      
                      children: [
                        SizedBox(width: 20,),
                        buildCountSection('Followers', followersCount),
                        SizedBox(width: 20,),
                        buildCountSection('Following', followingCount),
                        SizedBox(width: 20,),
                        buildCountSection('Post', followingCount),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text("No Bio"),
                    SizedBox(height: 20),
                     Row(
                      children: [
                        SizedBox(width: 20,),
                        LoginButton(
                            borderRadius: 20,
                            height: 40,
                            width: 130,
                            containerColor: Colors.blue,
                            childWidget: Center(child: Text("Edit Profile"))),
                            SizedBox(width: 20,),
                              Container(
                                decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 2,),borderRadius: BorderRadius.circular(20)),
                                child: const LoginButton(
                                                          borderRadius: 20,
                                                          height: 40,
                                                          width: 130,
                                                          containerColor:Colors.transparent,
                                                          childWidget: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                            children: [Icon(Icons.add),Text("Add Child")]) ,),
                              ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    TabBar(
                      labelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: UnderlineTabIndicator(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 3,
                          )),
                      controller: _tabController,
                      tabs: [
                        Tab(
                          text: 'New Post',
                        ),
                        Tab(text: 'Tagged'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 300,
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
    );
  }

  Widget buildCountSection(String title, int count) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget buildNewPostSection() {
    return Container();
  }

  Widget buildTaggedSection() {
    return Container();
  }
}
