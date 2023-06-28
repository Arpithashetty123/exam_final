
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

import 'bottom_nav_bar.dart';

class BlogdetailsWidget extends StatelessWidget {
  final String imagePath;
  final String mainText;
  final String subText;

  const BlogdetailsWidget({
    Key? key,
   required this.imagePath,
    required this.mainText,
    required this.subText, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text = loremIpsum(words: 100, paragraphs: 3, initWithLorem: false);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                 SizedBox(
                    height: 280,
                    width: double.infinity,
                    child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        child: Image.asset(
                              "assets/images/girl1_image.png",
                          fit: BoxFit.fill,
                        ))),

                           Positioned(
                            top: 20,
                            left: 30,
                             child: Container(
                                         height: 45,
                                         width: 45,
                                         decoration: BoxDecoration(
                                           color: Colors.white,
                                           shape: BoxShape.circle),
                                         child: Icon(AntDesign.left),
                                       ),
                           )
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                     mainText,
                  style:  GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
               SizedBox(height: 10,),
              Padding(
                padding:  EdgeInsets.only(left: 20),
             child: Text(
                subText,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.grey.shade400,
                ),
              )),
                 SizedBox(height: 10,),
                 ListTile(
                  leading: CircleAvatar( 
                    radius: 30,
                    backgroundImage: AssetImage(imagePath),
                  ),
                 title: Text("monisha.tarkari"),
                 subtitle: Text("2 Children // Working Mom"),),
                 SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.only(left: 20,right: 20),
             child: Text(text,style: GoogleFonts.poppins(fontSize: 12),),
           )
              
                   ],
                   ),
        ),
      ),
        bottomNavigationBar:const BottomNavPage());
  }
}
