// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_font_icons/flutter_font_icons.dart';

// class BlogInoWidget extends StatelessWidget {
//   const BlogInoWidget({super.key, required this.imageAsset});
//   final String imageAsset;
 
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Stack(
//           children: [
//             SizedBox(
//                 height: 280,
//                 width: double.infinity,
//                 child: ClipRRect(
//                     borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(30),
//                         bottomRight: Radius.circular(30)),
//                     child: Image.asset(
//                       imageAsset,
//                       fit: BoxFit.fill,
//                     ))),
//             Container(
//               height: 50,
//               width: 50,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 shape: BoxShape.circle),
//               child: Icon(AntDesign.left),
//             )
//           ],
//         ),
         
//       ],
//     );
//   }
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

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
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                     mainText,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
               SizedBox(height: 10,),
              Padding(
                padding:  EdgeInsets.only(left: 20),
             child: Text(
                subText,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              )),
                 SizedBox(height: 20,),
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
             child: Text(text,style: GoogleFonts.poppins(fontSize: 10),),
           )
              
                   ],
                   ),
        ),
      ),
        bottomNavigationBar: BottomNavigationBar(
       elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Feather.heart),
            label: 'Likes',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.bookmark_o),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(AntDesign.sharealt),
            label: 'share',
          ),
        ], 
      
      
    ));
  }
}
