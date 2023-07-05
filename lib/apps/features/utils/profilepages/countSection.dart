import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
Widget buildCountSection(String title, int count,TextStyle style) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: GoogleFonts.poppins(color: Colors.black)
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style:style
        ),
      ],
    );
  }

  Widget buildNewPostSection() {
    return Container(
    );
  }

  Widget buildTaggedSection() {
    return Container(
    );
  }
