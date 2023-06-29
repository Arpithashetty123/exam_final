
import 'package:flutter/material.dart';

import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/icon_widget.dart';
import '../../utils/recordings/circle_avatr_widget.dart';
import '../../utils/recordings/post_container.dart';


class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                child: Stack(children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "1  min",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 15),
                      )),
                  Positioned(
                    top: 40,
                    left: 30,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: buildIcon(AntDesign.close),
                        ),
                        SizedBox(
                          width: 250,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: buildIcon(Fontisto.smiley),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                      bottom: 0,
                      child:PostContainer()
                      ),
                  Positioned(
                      bottom: 330,
                      right: 20,
                      height: 65,
                      width: 150,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(55)),
                        child: Row(
                          children: [
                            SizedBox(width: 12),
                            buildCircleAvatar(
                                "assets/images/Ellipse 11.png", Colors.green),
                            SizedBox(width: 15),
                            buildCircleAvatar(
                                "assets/images/Ellipse 19.png", Colors.purple),
                          ],
                        ),
                      ))
                ]))));
  }
}
