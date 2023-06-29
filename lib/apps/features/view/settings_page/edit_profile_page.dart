import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/Button_widgets/container_widget.dart';
import 'package:flutter_application_1/apps/features/utils/pagestyle.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/home_page_widget/bottom_navigation.dart';

class EditProfilePage extends StatelessWidget {
  final List<Map<String, dynamic>> profileList;

  const EditProfilePage({Key? key, required this.profileList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Edit your Profile",
            style: verificationColour(),
          ),
          SizedBox(
            height: 40,
          ),
          LoginButton(
            height: 60,
            width: 350,
            borderRadius: 30,
            containerColor: Color.fromARGB(255, 241, 247, 252),
            childWidget: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Profile", style: GoogleFonts.poppins(fontSize: 18)),
                Container(
                  height: 60,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("assets/images/Ellipse 9.png"),
                      ),
                      Icon(
                        EvilIcons.chevron_right,
                        size: 40,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 480,
            width: 380,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 241, 247, 252),
              borderRadius: BorderRadius.circular(30),
            ),
            padding: EdgeInsets.all(10),
            child: ListView.builder(
              itemCount: profileList.length,
              itemBuilder: (context, index) {
                final setting = profileList[index];
                return Column(
                  children: [
                    ListTile(
                      leading: Text(setting['Name'], style: GoogleFonts.poppins(fontSize: 15)),
                      title: Text(setting['UserName'], style: GoogleFonts.poppins(fontSize: 15)),
                      trailing: Icon(setting['icon'], size: 40, color: Colors.black),
                    ),
                    if (index < profileList.length - 1)
                      const Divider(
                        color: Color.fromARGB(255, 200, 230, 255),
                        thickness: 1,
                        height: 20,
                      ),
                  ],
                );
              },
            ),
          ),
          Text("Delete Account", style: GoogleFonts.poppins(color: Colors.red, fontSize: 25)),
          BottomNavBar(),
        ],
      ),
    );
  }
}
