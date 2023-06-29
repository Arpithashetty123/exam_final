import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle toddddler() {
  return GoogleFonts.poppins(
      color: Color.fromRGBO(33, 39, 56, 1),

      ///  fontWeight: FontWeight.,
      fontSize: 45);
}

TextStyle toddddler1() {
  return GoogleFonts.poppins(
      color: Color.fromRGBO(102, 215, 246, 1),

      ///  fontWeight: FontWeight.,
      fontSize: 45);
}

TextStyle loginColour() {
  return GoogleFonts.poppins(
      color: Colors.white, fontWeight: FontWeight.w400, fontSize: 25);
}

TextStyle loginColour2() {
  return GoogleFonts.poppins(
      color: Colors.black, fontWeight: FontWeight.w300, fontSize: 22);
}

TextStyle verificationColour() {
  return GoogleFonts.poppins(
      color: Color.fromRGBO(33, 39, 56, 1),
      fontWeight: FontWeight.bold,
      fontSize: 30);
}

TextStyle verificationsubColour() {
  return GoogleFonts.poppins(
      color: Colors.grey.shade500,
      fontWeight: FontWeight.w400,
      fontSize: 15,
      letterSpacing: 1);
}

TextStyle cameAccessColour() {
  return GoogleFonts.poppins(
    color: Color.fromRGBO(88, 180, 211, 1),
    fontWeight: FontWeight.w400,
    fontSize: 15,
  );
}
