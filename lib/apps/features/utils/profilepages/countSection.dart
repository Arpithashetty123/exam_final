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
    return Container();
  }

  Widget buildTaggedSection() {
    return Container();
  }
