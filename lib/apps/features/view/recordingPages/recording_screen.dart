import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/view/recordingPages/recorded_page.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import '../../utils/icon_widget.dart';
import '../../utils/pagestyle.dart';

class RecordingPage extends StatelessWidget {
  const RecordingPage({Key? key}) : super(key: key);

  final String backgroundImage = "assets/images/Rectangle 75.png";

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: screenHeight,
          width: screenWidth,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(backgroundImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: screenHeight * 0.10,
                left: screenWidth * 0.08,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              RecordedPage(backgroundImage: backgroundImage)),
                    );
                  },
                  child: buildIcon(MaterialCommunityIcons.image),
                ),
              ),
              Positioned(
                bottom: screenHeight * 0.075,
                left: screenWidth * 0.05,
                child: Text(
                  "Upload",
                  style: postColour(),
                ),
              ),
              Positioned(
                bottom: screenHeight * 0.065,
                left: screenWidth * 0.38,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      radius: screenWidth * 0.075,
                      backgroundColor: Color.fromRGBO(255, 69, 58, 1),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.03,
                left: screenWidth * 0.06,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: buildIcon(AntDesign.close),
                ),
              ),
              Positioned(
                top: screenHeight * 0.03,
                right: screenWidth * 0.06,
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: buildIcon(MaterialCommunityIcons.camera_retake),
                    ),
                    SizedBox(height: screenHeight * 0.05),
                    IconButton(
                      onPressed: () {},
                      icon: buildIcon(Ionicons.flash_off),
                    ),
                    SizedBox(height: screenHeight * 0.05),
                    IconButton(
                      onPressed: () {},
                      icon: buildIcon(Fontisto.smiley),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: screenHeight * 0.21,
                right: screenWidth * 0.006,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(AntDesign.star,
                      color: Colors.white, size: screenWidth * 0.024),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
