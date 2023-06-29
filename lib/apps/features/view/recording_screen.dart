import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/view/recorded_page.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/icon_widget.dart';

class RecordingPage extends StatelessWidget {
  const RecordingPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Rectangle 75.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 65,
                left: 30,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RecordedPage()),
                    );
                  },
                  child: buildIcon(MaterialCommunityIcons.image),
                ),
              ),
              Positioned(
                bottom: 45,
                left: 35,
                child: Text(
                  "Upload",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Positioned(
                bottom: 40,
                left: 160,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 8),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Color.fromRGBO(255, 69, 58, 1),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 40,
                left: 30,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: buildIcon(AntDesign.close),
                ),
              ),
              Positioned(
                top: 30,
                right: 30,
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: buildIcon(MaterialCommunityIcons.camera_retake),
                    ),
                    SizedBox(height: 25),
                    IconButton(
                      onPressed: () {},
                      icon: buildIcon(Ionicons.flash_off),
                    ),
                    SizedBox(height: 25),
                    IconButton(
                      onPressed: () {},
                      icon: buildIcon(Fontisto.smiley),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 160,
                right: 2,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(AntDesign.star, color: Colors.white, size: 10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
