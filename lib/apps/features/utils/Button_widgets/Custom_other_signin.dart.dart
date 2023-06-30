// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomOtherSignupButton extends StatelessWidget {
  String text;
  String assetPath;
  Color textColor;
  Color buttonColor;
  CustomOtherSignupButton(
      {Key? key,
      required this.text,
      required this.assetPath,
      required this.textColor,
      required this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 85,
        width: 180,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    assetPath,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              text,
              style: GoogleFonts.poppins(
                  fontSize: 22, color: textColor, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
