import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/view/set_gender.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

import '../utils/Button_widgets/container_widget.dart';


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
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.blue,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text("Settings"),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                 return   SetGenderPage() ;
                },));
              },
              child: LoginButton(
                height: 60,
                width: 350,
                borderRadius: 30,
                containerColor: Colors.lightBlue.shade200,
                childWidget: ListTile(
                  leading: Text("Profile"),
                  trailing: Icon(EvilIcons.chevron_right),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 480,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
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
                        leading: Text(setting['title']),
                        trailing: Icon(setting['icon']),
                      ),
                      if (index < settingsList.length - 1)
                        Divider(
                          color: Colors.grey,
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
