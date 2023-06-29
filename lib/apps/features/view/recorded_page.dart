import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/view/post_page.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/icon_widget.dart';
import '../utils/recordings/container_widget.dart';
import 'blur_image_page.dart';

class RecordedPage extends StatelessWidget {
  const RecordedPage({Key? key});

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
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "1  min",
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 15),
                ),
              ),
              Positioned(
                top: 40,
                left: 30,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: buildIcon(AntDesign.close),
                    ),
                    SizedBox(width: 250),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BlurPage()),
                        );
                      },
                      child: buildIcon(Fontisto.smiley),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 25,
                right: 8,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(AntDesign.star, color: Colors.white, size: 10),
                ),
              ),
              Positioned(
                bottom: 60,
                left: 100,
                child: RecordedPageContainer(height: 70,width: 205),
              ),
              Positioned(
                bottom: 140,
                left: 160,
              child: Text(
                  "Post with?",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

