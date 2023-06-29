import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/view/post_page.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/recordings/container_widget.dart';

class BlurPage extends StatefulWidget {
  const BlurPage({Key? key}) : super(key: key);

  @override
  State<BlurPage> createState() => _BlurPageState();
}

class _BlurPageState extends State<BlurPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Rectangle 75.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 40.0, tileMode: TileMode.clamp),
            child: Container(
              height: double.infinity,
              child: Center(
                child: Container(
                  height: 600,
                  child: Image.asset("assets/images/Rectangle 75.png"),
                ),
              ),
            ),
          ),
          Positioned(
            top: 55,
            left: 30,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(AntDesign.close, color: Colors.white, size: 30),
            ),
          ),
          Positioned(
            bottom: 35,
            left: 0,
            right: 0,
            child: Center(
              child: RecordedPageContainer(  height: 70,
      width: 205,),
            ),
          ),
          Positioned(
            bottom: 115,
            left: 165,
           
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
    );
  }
}