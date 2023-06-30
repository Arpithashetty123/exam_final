import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/view/recordingPages/recording_screen.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../utils/login_with_phone/close_widget.dart';
import '../../utils/pagestyle.dart';

class CameAccessPage extends StatelessWidget {
  const CameAccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(33, 39, 56, 1),
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CloseIconWidget(),
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
                  TextButton(child: Center(child: Text("Enable Camera Access",style: cameAccessColour())),onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) {
                       return RecordingPage();
                     },));
                  }, ),
                  SizedBox(height: 20),
                  Center(child: Text("Enable Microphone Access", style: cameAccessColour())),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
