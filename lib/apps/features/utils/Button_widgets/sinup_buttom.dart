import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SinUpButton extends StatelessWidget {
  final Color containerColor;
  final String text;
  final Color textColor;

  const SinUpButton({
    Key? key,
    required this.containerColor,
    required this.text,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        height: 65,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        child: Center(
            child: Text(text,
                style: GoogleFonts.poppins(color: textColor, fontSize: 20))));
  }
}
