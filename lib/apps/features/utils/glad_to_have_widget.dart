import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInputContainer extends StatelessWidget {
  final String hintText;
  final IconData sufixIcon;

  const CustomInputContainer({
    required this.hintText,
    required this.sufixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,),
      child: Container(
        width: 350,
        height: 65,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Colors.black,
            width: 3,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: hintText,

                  border: InputBorder.none,
                  hintStyle: GoogleFonts.poppins(
                    color: Colors.grey.shade400,
                  ),
                ),
                style: TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                cursorWidth: 2,
                autofocus: false,
              ),
            ),
             Icon(
              sufixIcon,
              color: Colors.grey.shade400,
            ),
          ],
        ),
      ),
    );
  }
}
