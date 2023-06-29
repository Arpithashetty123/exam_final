import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/pagestyle.dart';
import 'package:flutter_application_1/apps/features/view/settings_page/set_name.dart';
import 'package:flutter_application_1/apps/features/view/settings_page/set_user_name.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

import '../../utils/settingsPage/app_bar_widget.dart';

class BioPage extends StatefulWidget {
  const BioPage({super.key});
  @override
  State<BioPage> createState() => _BioPageState();
}

class _BioPageState extends State<BioPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        onLeadingPressed: () {
          Navigator.pop(context);
        },
        onActionPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return SetUserNamePage();
            },
          ));
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 50, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bio",
              style: verificationColour(),
            ),
            SizedBox(height: 60),
            Expanded(
              child: TextField(
             minLines: 10,
             maxLength: 150,
                cursorColor: Colors.grey,
                maxLines: null,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
