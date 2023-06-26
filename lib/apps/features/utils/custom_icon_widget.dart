// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomOtherSignupButton extends StatelessWidget {
  String text;
  String assetPath;
  CustomOtherSignupButton({
    Key? key,
    required this.text,
    required this.assetPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 70,
        width: 160,
        decoration: BoxDecoration(
          color:  Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 28,
            ),
            Container(
              height: 22,
              width: 22,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(assetPath),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              text,
              style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
