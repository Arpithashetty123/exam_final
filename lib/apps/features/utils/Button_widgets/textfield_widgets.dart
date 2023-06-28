import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 400,
          child: TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 3),
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: Icon(Ionicons.ios_at),
              prefixIconColor: Colors.black,
              hintText: "UserName/Email",
              hintStyle: GoogleFonts.poppins(color: Colors.grey.shade400),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.black, width: 3),
              ),
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
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue.shade400, width: 3),
                borderRadius: BorderRadius.circular(5),
              ),
              hintText: "Enter Your Password",
              hintStyle: GoogleFonts.poppins(color: Colors.grey.shade400),
              prefixIcon: Icon(Icons.lock),
              prefixIconColor: Colors.black,
              suffixIcon: Icon(Icons.visibility),
              suffixIconColor: Colors.black,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.black, width: 6),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
