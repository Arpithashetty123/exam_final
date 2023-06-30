import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

import '../../../../myrouter/routes.dart';
import '../../utils/icon_widget.dart';
import '../../utils/pagestyle.dart';
import '../../utils/recordings/container_widget.dart';

class RecordedPage extends StatelessWidget {
  const RecordedPage({Key? key, required this.backgroundImage})
      : super(key: key);

  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(backgroundImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: screenHeight * 0.03,
                left: screenWidth * 0.048,
                child: Row(
                  children: [
                    SizedBox(width: screenWidth * 0.010),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: buildIcon(AntDesign.close),
                    ),
                    SizedBox(width: screenWidth * 0.30),
                    Text(
                      "1  min",
                      style: postColour(),
                    ),
                    SizedBox(width: screenWidth * 0.190),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.blurPage);
                      },
                      child: buildIcon(Fontisto.smiley),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: screenHeight * 0.012,
                right: screenWidth * 0.06,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(AntDesign.star,
                      color: Colors.white, size: screenWidth * 0.024),
                ),
              ),
              Positioned(
                bottom: screenHeight * 0.100,
                left: screenWidth * 0.25,
                child: RecordedPageContainer(
                    height: screenHeight * 0.080, width: screenWidth * 0.500),
              ),
              Positioned(
                bottom: screenHeight * 0.19,
                left: screenWidth * 0.40,
                child: Text(
                  "Post with?",
                  style: postColour(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
