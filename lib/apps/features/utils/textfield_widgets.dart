import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(

                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 5)),
                    prefixIcon: Icon(Ionicons.at),
                    prefixIconColor: Colors.black,
                    hintText: "UserName/Email",
                    hintStyle: GoogleFonts.poppins(color: Colors.grey.shade400),
                    focusColor: Colors.black,
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
               SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 400,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade400, width: 5)),
                hintText: "Enter Your Password",
                hintStyle: GoogleFonts.poppins(color: Colors.grey.shade400),
                prefixIcon: Icon(Fontisto.asterisk),
                prefixIconColor: Colors.black,
                focusColor: Colors.black,
                suffixIcon: Icon(Octicons.eye, size: 30),
                suffixIconColor: Colors.black,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black,width: 5)),
              ),
            ),
          ),
         
      ],
    );
         
  }
}