import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/icon_widget.dart';
import '../../utils/recordings/circle_avatr_widget.dart';
import '../../utils/recordings/post_container.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key,});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Rectangle 75.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "1 min",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.04,
                left: screenWidth * 0.03,
                  right: screenWidth * 0.03,
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: buildIcon(AntDesign.close),
                    ),
                    const SizedBox(width: 250),
                    IconButton(
                      onPressed: () {},
                      icon: buildIcon(Fontisto.smiley),
                    ),
                  ],
                ),
              ),
              const Positioned(
                bottom: 0,
                left: 0,
                child: PostContainer(),
              ),
              Positioned(
                bottom: screenHeight * 0.35,
                right: screenWidth * 0.05,
                height: screenHeight * 0.07,
                width: screenWidth * 0.35,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(55),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    
                      buildCircleAvatar(
                        "assets/images/Ellipse 11.png",
                        Colors.green,
                      ),
                      
                      buildCircleAvatar(
                        "assets/images/Ellipse 19.png",
                        Colors.purple,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
