import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../myrouter/routes.dart';
import '../../utils/Button_widgets/container_widget.dart';
import '../../utils/pagestyle.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key});

  final List<Map<String, dynamic>> settingsList = [
    {'title': 'Privacy Settings', 'icon': EvilIcons.chevron_right},
    {'title': 'Help Centre', 'icon': EvilIcons.chevron_right},
    {'title': 'About Us', 'icon': EvilIcons.chevron_right},
    {'title': 'Terms of Service', 'icon': EvilIcons.chevron_right},
    {'title': 'Privacy Policy', 'icon': EvilIcons.chevron_right},
    {'title': 'Community Guidelines', 'icon': EvilIcons.chevron_right},
  ];
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            return Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: screenWidth * 0.1,
            color: const Color.fromRGBO(102, 211, 246, 1),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: screenWidth * 0.05, right: screenWidth * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.03),
            Text(
              "Settings",
              style: verificationColour(),
            ),
            SizedBox(height: screenHeight * 0.03),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.setGenderPage);
              },
              child: LoginButton(
                height: screenHeight * 0.075,
                width: screenWidth * 0.9,
                borderRadius: 35,
                containerColor: Color.fromARGB(255, 241, 247, 252),
                childWidget: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: ListTile(
                    leading: Text(
                      "Profile",
                      style: GoogleFonts.poppins(fontSize: 18),
                    ),
                    trailing: const Icon(
                      EvilIcons.chevron_right,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Container(
              height: screenHeight * 0.50,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 247, 252),
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.all(screenHeight * 0.01),
              child: ListView.builder(
                itemCount: settingsList.length,
                itemBuilder: (context, index) {
                  final setting = settingsList[index];
                  return Column(
                    children: [
                      ListTile(
                        leading: Text(
                          setting['title'],
                          style: GoogleFonts.poppins(fontSize: 16),
                        ),
                        trailing: Icon(
                          setting['icon'],
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                      if (index < settingsList.length - 1)
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
          ],
        ),
      ),
    );
  }
}
