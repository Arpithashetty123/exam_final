import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/myrouter/routes.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Button_widgets/sinup_buttom.dart';
import 'circle_avatr_widget.dart';
class PostContainer extends StatelessWidget {
  const PostContainer({super.key,});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;

    return Container(
      height: mediaQuery.size.height * 0.34,
      width: screenWidth,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: mediaQuery.size.height * 0.05,
          ),
          SizedBox(
            width: screenWidth * 0.8,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefix: const SizedBox(
                  width: 15,
                ),
                prefixIcon: buildCircleAvatar(
                  "assets/images/Ellipse 11.png",
                  Colors.green,
                ),
                hintText: "Write a caption",
                hintStyle: GoogleFonts.poppins(
                  color: Colors.grey.shade300,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(
            height: mediaQuery.size.height * 0.04,
          ),
          SizedBox(
            width: screenWidth * 0.8,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefix: const SizedBox(
                  width: 15,
                ),
                prefixIcon: const Icon(
                  FontAwesome.tags,
                  color: Color.fromARGB(255, 2, 14, 32),
                  size: 25,
                ),
                hintText: "Add a Tag",
                hintStyle: GoogleFonts.poppins(
                  color: Colors.grey.shade300,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(
            height: mediaQuery.size.height * 0.03,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.findPage);
            },
            child: Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.10,
                right: screenWidth * 0.10,
              ),
              child: const SinUpButton(
                containerColor: Color.fromRGBO(102, 211, 246, 1),
                text: "Post",
                textColor: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
