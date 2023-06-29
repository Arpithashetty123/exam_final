import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/view/settings_page/set_gender.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/Button_widgets/container_widget.dart';
import '../../utils/pagestyle.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});

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
              size: 35,
              color: const Color.fromRGBO(102, 211, 246, 1),

            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text("Settings",style:verificationColour() ,),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return SetGenderPage();
                  },
                ));
              },
              child: LoginButton(
                height: 60,
                width: 350,
                borderRadius: 30,
                containerColor:Color.fromARGB(255, 241, 247, 252),
                childWidget: ListTile(
                  leading: Text("Profile",style: GoogleFonts.poppins(fontSize: 18)),
                  trailing: const Icon(EvilIcons.chevron_right,size: 40,color: Colors.black,),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 480,
              width: 350,
              decoration: BoxDecoration(
              color:Color.fromARGB(255, 241, 247, 252),
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: settingsList.length,
                itemBuilder: (context, index) {
                  final setting = settingsList[index];
                  return Column(
                    children: [
                      ListTile(
                        leading: Text(setting['title'],style: GoogleFonts.poppins(fontSize: 15)),
                        trailing: Icon(setting['icon'],size: 40,color: Colors.black,),
                      ),
                      if (index < settingsList.length - 1)
                        const Divider(
                          color:Color.fromARGB(255, 200, 230, 255),
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
