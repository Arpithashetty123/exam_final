import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget TextButtonWidget(String hintText) {
  return TextField(
                  decoration: InputDecoration(
                      focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.blue, width: 3)),
                      hintText: hintText,
                      hintStyle:
                          GoogleFonts.poppins(color: Colors.grey.shade400),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 3, color: Colors.black))));
            
}