import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/home_page_widget/latest_blog_widget.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../myrouter/routes.dart';
import '../../utils/home_page_widget/bottom_navigation.dart';
import '../../utils/home_page_widget/categories.dart';
import '../../utils/home_page_widget/story_widget.dart';
import 'blog_page_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title:  Text(
          "toddddler",
          style: GoogleFonts.poppins(color: Colors.black, fontSize: 25),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesome.bookmark, color:  Color.fromRGBO(102, 211, 246, 1),size: 30),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesome.search, color: Colors.black,size: 28),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           StoryWidget(),
            const SizedBox(height: 15),
            Text(
              "   Categories",
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w700),
            ),
  const SizedBox(height: 10),
             CategoriesPage(),
            SizedBox(height: 25),
            Text(
              "    Latest Blog",
               style: GoogleFonts.poppins(
                  fontSize: 22, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 20),
            GestureDetector(
            onTap: () {
               Navigator.pushNamed(context, MyRoutes.blogdetailspage);
            },
              child: const LatestBlogWidget(
                  imagePath: "assets/images/girl_image.png",
                  mainText: "My Experience : The Second Time",
                  subText: "With the second child on its way,my experiences dealing with life."),
            ),
                 SizedBox(height: 20),
            GestureDetector(

              child: const LatestBlogWidget(
                  imagePath: "assets/images/Baby_image.png",
                  mainText: "Is flash photography harmful for your baby?",
                  subText: "The answer will surprise you."),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Navigator.push(context, DialogRoute(context: context, builder: (context) {
                  return BlogDetailsPage();
                },));
              },
              child: const LatestBlogWidget(
                  imagePath: "assets/images/girl_image.png",
                  mainText: "My Experience : The Second Time",
                  subText: "With the second child on its way,my experiences dealing with life."),
            ),
SizedBox(height: 20,),
          ],
      ),
    ),bottomNavigationBar:BottomNavBar() ,
    );
  }
}