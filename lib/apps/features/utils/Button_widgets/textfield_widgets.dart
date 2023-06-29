import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldWidget extends StatelessWidget {
   TextFieldWidget({Key? key});

  final OutlineInputBorder focusedInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue, width: 3),
    borderRadius: BorderRadius.circular(10),
  );

  final InputDecoration commonInputDecoration = InputDecoration(
     enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3,color: Colors.black)
                  ),
    prefixIconColor: Colors.black,
    hintStyle: GoogleFonts.poppins(color: Colors.grey.shade400),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color: Colors.black, width: 3),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 400,
          child: TextField(
            decoration: commonInputDecoration.copyWith(
              focusedBorder: focusedInputBorder,
              prefixIcon: Icon(Ionicons.ios_at),
              hintText: "UserName/Email",
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
            decoration: commonInputDecoration.copyWith(
              
              focusedBorder: focusedInputBorder.copyWith(
                borderSide: BorderSide(color: Colors.blue.shade400, width: 3),
              ),
              hintText: "Enter Your Password",
              prefixIcon: Icon(Fontisto.asterisk, size: 20),
              suffixIcon: Icon(Icons.visibility, size: 30),
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
