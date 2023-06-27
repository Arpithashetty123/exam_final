import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/button_widget.dart';
import '../utils/pagestyle.dart';
import 'number_page.dart';

class MainInfoPage extends StatefulWidget {
  @override
  _MainInfoPageState createState() => _MainInfoPageState();
}

class _MainInfoPageState extends State<MainInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 120,
          ),
          Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/child-4.png"),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Sign Up/Login for",
            style: GoogleFonts.poppins(
              fontSize: 20,
              color: const Color.fromRGBO(102, 211, 246, 1),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "toddddler",
            style: toddddler(),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyNumberPage(),
                ),
              );
            },
            child: CustomContainer(
              iconColor: Colors.white,
              textColor: Colors.white,
              backgroundColor: Color.fromRGBO(102, 211, 246, 1),
              icon: FontAwesome.mobile_phone,
              text: "Phone Number",
            ),
          ),
          const SizedBox(height: 15),
          CustomContainer(
            iconColor: Colors.black,
            textColor: Colors.black,
            backgroundColor: Colors.white,
            icon: AntDesign.google,
            text: "Continue with Google",
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
              text: TextSpan(
                text: 'By continuing, you agree to the ',
                style: TextStyle(
                  color: Color.fromRGBO(102, 211, 246, 1),
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text: 'Terms and Conditions',
                    style: GoogleFonts.poppins(
                      color: Color.fromRGBO(102, 211, 246, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: ' and confirm you have read '),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: GoogleFonts.poppins(
                      color: Color.fromRGBO(102, 211, 246, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(50),
            ),
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildIcon(Icons.home),
                buildIcon(Ionicons.compass),
                buildIcon(Icons.person),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIcon(IconData icon) {
    return Icon(
      icon,
      size: 40,
      color: Colors.grey.shade300,
    );
  }
}
