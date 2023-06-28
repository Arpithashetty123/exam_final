import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

import 'Blog_info_widget.dart';

// class BlogWidget extends StatelessWidget {
//   const BlogWidget({super.key, required this.imagePath, required this.mainText, required this.subText});
//    final String imagePath;
//    final String mainText; 
//    final String subText; 
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 18),
//       child: Container(
//         width: 380,
//         height: 180,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.shade400,
//               blurRadius: 2,
//               offset: Offset(0.0, 0.5),
//               spreadRadius: 1
//             )
//           ]
//         ),
//         child: Stack(
        
//           children: [
//             SizedBox(
//               height: 180,
//               width: 120,
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(20),
//                 child: Image.asset(imagePath,fit: BoxFit.fitHeight,))),
//               Positioned(
//                 top: 20,
//                 left: 140,
//                 child: Column(
//                   children: [
//                     Text(mainText),
//                     SizedBox(height: 10,),
//                     Text(subText),
//                      SizedBox(height: 10,),
//                      Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                        IconButton(onPressed: () {
                        
//                       }, icon: Icon(Feather.heart, color: Colors.blue,),),
//                       IconButton(onPressed: () {
                        
//                       }, icon: Icon(FontAwesome.bookmark, color: Colors.blue,),),
                      
//                      ],)
//                   ],
//                 ),
//               )
//           ],
//         ),
//       ),
//     );
//   }
// }
class LatestBlogWidget extends StatelessWidget {
  const LatestBlogWidget({
    Key? key,
    required this.imagePath,
    required this.mainText,
    required this.subText,
  }) : super(key: key);

  final String imagePath;
  final String mainText;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BlogdetailsWidget(
             imagePath: imagePath,
              mainText: mainText,
              subText: subText,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Container(
          width: 380,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 2,
                offset: Offset(0.0, 0.5),
                spreadRadius: 1,
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 114,
                height: 180,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mainText,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subText,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.red.shade300,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.bookmark,
                              color: Colors.blue,
                            ),
                          ),
                        ],
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


    


