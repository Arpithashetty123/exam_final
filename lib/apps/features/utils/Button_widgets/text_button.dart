import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget TextButtonWidget(String hintText, BorderRadius borderRadius) {
  return TextField(
      decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: BorderSide(width: 3, color: Colors.black)),
    focusedBorder: OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: BorderSide(color: Colors.blue, width: 3)),
    hintText: hintText,
    hintStyle: GoogleFonts.poppins(color: Colors.grey.shade400),
  ));
}
