 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


  class StoryWidget extends StatelessWidget {
   StoryWidget({super.key});
final List<String> stories = [
    "assets/images/Ellipse 8.png",
    "assets/images/Ellipse 11.png",
    "assets/images/Ellipse 19.png",
    "assets/images/Ellipse 8.png",
    "assets/images/Ellipse 11.png",
    "assets/images/Ellipse 11.png",
    "assets/images/Ellipse 19.png",
    "assets/images/Ellipse 9.png",
  ];

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, left: 12),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color.fromARGB(255, 107, 183, 230),
                                width: 3,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: CircleAvatar(
                                radius: 60,
                                backgroundImage: AssetImage(stories[index]),
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                           Text(
                            "Username",
                            style: GoogleFonts.aBeeZee(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
  }
}