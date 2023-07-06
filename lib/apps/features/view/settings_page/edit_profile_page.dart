import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/pagestyle.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../myrouter/routes.dart';
import '../../utils/login_with_phone/nav_container.dart';
import '../../utils/settingsPage/change-image_container.dart';
import '../ProfilePage/settings_page.dart';

class EditProfilePage extends StatelessWidget {
  final List<Map<String, dynamic>> profileList;
  final String text;

  const EditProfilePage(
      {Key? key, required this.profileList, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, actions: [
        IconButton(
          icon: const Badge(
            child: Icon(
              Ionicons.notifications,
              color: Colors.black,
              size: 30,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.notificationpage);
          },
        ),
        IconButton(
          icon: Icon(
            Icons.settings,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return SettingsPage();
              },
            ));
          },
        ),
      ]),
      body: Padding(
        padding: EdgeInsets.only(
            left: screenWidth * 0.1,
            top: screenHeight * 0.03,
            right: screenWidth * 0.08),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: verificationColour(),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ), 
              const ProfileEditWidget(),
              SizedBox(height: screenHeight * 0.02),
              Container(
                height: screenHeight * 0.42,
                width: screenWidth * 0.99,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 247, 252),
                  borderRadius: BorderRadius.circular(screenWidth * 0.08),
                ),
                padding: EdgeInsets.all(screenWidth * 0.02),
                child: ListView.builder(
                  itemCount: profileList.length,
                  itemBuilder: (context, index) {
                    final setting = profileList[index];
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: screenWidth * 0.01,
                              right: screenWidth * 0.01),
                          child: ListTile(
                            leading: Text(setting['Name'],
                                style: GoogleFonts.poppins(fontSize: 15)),
                            title: Text(setting['UserName'],
                                style: GoogleFonts.poppins(fontSize: 15)),
                            trailing: Icon(setting['icon'],
                                size: 35, color: Colors.black),
                          ),
                        ),


                        if (index < profileList.length - 1)
                          Divider(
                            color: Color.fromARGB(255, 200, 230, 255),
                            thickness: 1,
                            height: screenWidth * 0.04,
                          ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: screenHeight * 0.030),
              Center(
                  child: Text("Delete Account",
                      style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 248, 74, 132),
                          fontSize: screenWidth * 0.05))),
              SizedBox(height: screenHeight * 0.10),
              NavContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
