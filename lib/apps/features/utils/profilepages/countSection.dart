import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pagestyle.dart';

Widget buildCountSection(String title, int count) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: GoogleFonts.poppins(color: Colors.black)
        ),
        SizedBox(height: 5),
        Text(
          title,
          style:cameAccessColour()
        ),
      ],
    );
  }

  Widget buildNewPostSection() {
    return Container(
      height: 900,
      width: 300,
      child: GridView.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
        itemBuilder: (context, index) {
          return Image.asset("assets/images/Rectangle 37.png");
        },),
    );
  }

  Widget buildTaggedSection() {
    return Container(
      height: 900,
      width: 300,
      child: GridView.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
        itemBuilder: (context, index) {
          return Image.asset("assets/images/photo-of-child-playing-with-wooden-blocks-3933279.png");
        },),
    );
  }
