import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/view/recording_screen.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/pagestyle.dart';

class CameAccessPage extends StatelessWidget {
  const CameAccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(33, 39, 56, 1),
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Color.fromRGBO(102, 211, 246, 1)),
                ),
                child: IconButton(
                  onPressed: () {
                    return Navigator.pop(context);
                  },
                  icon: const Icon(
                    AntDesign.close,
                    color: Color.fromRGBO(102, 211, 246, 1),
                    size: 35,
                  ),
                ),
              ),
              SizedBox(height: 200),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " Record on Todddler",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "    Enable access so you can start\n                   taking videos",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 40),
                  TextButton(child: Text("    Enable Camera Access",style: cameAccessColour()),onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) {
                       return RecordingPage();
                     },));
                  }, ),
                  SizedBox(height: 20),
                  Text("     Enable Microphone Access", style: cameAccessColour()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
