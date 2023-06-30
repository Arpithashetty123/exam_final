import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/pagestyle.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import '../../utils/recordings/container_widget.dart';

class BlurPage extends StatefulWidget {
  const BlurPage({Key? key}) : super(key: key);

  @override
  State<BlurPage> createState() => _BlurPageState();
}

class _BlurPageState extends State<BlurPage> {
  final String backgroundImage = "assets/images/Rectangle 75.png";

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 20.0, sigmaY: 40.0, tileMode: TileMode.clamp),
            child: Center(
              child: SizedBox(
                height: screenHeight * 0.6,
                child: Image.asset(backgroundImage),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.055,
            left: screenWidth * 0.03,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(AntDesign.close,
                  color: Colors.white, size: screenWidth * 0.075),
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.120,
            left: screenWidth * 0.40,
            child: Text(
              "Post with?",
              style: postColour(),
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.035,
            left: 0,
            right: 0,
            child: Center(
              child: RecordedPageContainer(
                height: screenHeight * 0.08,
                width: screenWidth * 0.50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
