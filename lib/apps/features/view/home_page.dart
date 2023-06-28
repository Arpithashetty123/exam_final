import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/latest_blog_widget.dart';
import 'package:flutter_application_1/apps/features/utils/pagestyle.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/bottom_navigation.dart';
import '../utils/categories.dart';
import 'blog_page_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "toddddler",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(FontAwesome.bookmark, color: Colors.blue),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Fontisto.search, color: Colors.black),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
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
                          const Text(
                            "Username",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "   Categories",
              style: GoogleFonts.poppins(
                  fontSize: 28, fontWeight: FontWeight.w600),
            ),
  const SizedBox(height: 10),
             CategoriesPage(),
            SizedBox(height: 20),
            Text(
              "    Latest Blog",
              style: GoogleFonts.poppins(
                  fontSize: 28, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.push(context, DialogRoute(context: context, builder: (context) {
                  return BlogDetailsPage();
                },));
              },
              child: const LatestBlogWidget(
                  imagePath: "assets/images/girl_image.png",
                  mainText: "My Experience : The Second Time",
                  subText: "With the second child on its way,\nmy experiences dealing with life."),
            ),
                 SizedBox(height: 15),
            GestureDetector(

              child: const LatestBlogWidget(
                  imagePath: "assets/images/Baby_image.png",
                  mainText: "Is flash photography harmful\n for your baby?",
                  subText: "The answer will surprise you."),
            ),
            SizedBox(height: 15,),
            GestureDetector(
              onTap: () {
                Navigator.push(context, DialogRoute(context: context, builder: (context) {
                  return BlogDetailsPage();
                },));
              },
              child: const LatestBlogWidget(
                  imagePath: "assets/images/girl_image.png",
                  mainText: "My Experience : The Second Time",
                  subText: "With the second child on its way,\nmy experiences dealing with life."),
            ),

          ],
      ),
    ),bottomNavigationBar:BottomNavBar() ,
    );
  }
}