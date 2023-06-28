import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


TextStyle toddddler() {
  return GoogleFonts.poppins(
                color:Color.fromRGBO(33, 39, 56, 1),
              ///  fontWeight: FontWeight.,
                fontSize: 45);
}
TextStyle toddddler1() {
  return GoogleFonts.poppins(
                color:Color.fromRGBO(102, 215, 246, 1),
              ///  fontWeight: FontWeight.,
                fontSize: 45);
}

TextStyle loginColour() {
  return GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize:25);
}
TextStyle verificationColour() {
  return GoogleFonts.poppins(
                color:Color.fromRGBO(33, 39, 56, 1),
                fontWeight: FontWeight.bold,
                fontSize:32);
}
TextStyle verificationsubColour() {
  return GoogleFonts.poppins(
                color:Color.fromRGBO(184, 182, 182, 1),
                fontWeight: FontWeight.w400,
                fontSize:15,letterSpacing: 1);
}