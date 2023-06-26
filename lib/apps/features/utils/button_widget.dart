import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final Color iconColor;

  const CustomContainer({
    required this.icon,
    required this.text,
    required this.backgroundColor,
    required this.textColor, required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(35),
      ),
      padding: EdgeInsets.all(10),
      child: Row(
      
        children: [
          Icon(
            icon,
            size: 40,
            color:iconColor
          ),
          SizedBox(width: 10),
          Text(
            text,
            style: GoogleFonts.poppins(
              color: textColor,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
