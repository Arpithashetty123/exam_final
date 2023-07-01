import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/login_with_phone/nav_container.dart';
import 'package:flutter_application_1/apps/features/utils/newPages/background_page.dart';
import 'package:flutter_application_1/apps/features/utils/newPages/iconbutton.dart';
import 'package:flutter_application_1/apps/features/utils/newPages/like_share.dart';
import 'package:flutter_application_1/apps/features/utils/pagestyle.dart';
import 'package:flutter_application_1/myrouter/routes.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

import '../../utils/newPages/new_file_container.dart';

class nearbuy extends StatelessWidget {
  const nearbuy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
            BackGroundPage(image: "assets/images/boy_image.png"),
      Positioned(
          top: 65.0,
          left: 16.0,
          child: Row(
            children: [
              NewContainer(
                borderColor: Colors.white,
                containerColor: Colors.transparent,
                iconColor: Colors.white,
                iconData: Icons.arrow_back,)
             ,
              SizedBox(
                width: 100,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.forYouPage);
                },
                child: Text(
                  "Nearbuy",
                  style: loginColour(),
                ),
              )
            ],
          )),
      const Positioned(
        bottom: 170,
        right: 40,
        child:LikeShareWidget()
      ),
    


      Positioned(
        bottom: 130,
        left: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("@javed.chang",style: postColour(),),
          Text("Meet Javed's son fahim...",style: postColour(),)
        ],
      )),
      const Positioned(bottom: 30, left: 20, child: NavContainer())
    ]));
  }
}
               
//                 SizedBox(width: 8.0),
//                 SizedBox(width: 16.0),
//                 Container(
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Color.fromARGB(255, 236, 228, 228),
//                   ),
//                   child: Icon(
//                     Icons.videocam_rounded,
//                     size: 30,
//                     color: Color.fromARGB(255, 18, 111, 199),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(padding: EdgeInsets.only(left: 70)),
//           Positioned(
//             top: 70.0,
//             left: 16.0,
//             child: Padding(
//               padding: const EdgeInsets.only(left: 10),
//               child: Container(
//                 width: 50,
//                 child: Divider(
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             right: 16.0,
//             top: 200.0,
//             child: Column(
//               children: [
//                 IconButton(
//                   icon: Container(
//                     width: 60,
//                     child: CircleAvatar(
//                       radius: 80,
//                       backgroundImage: AssetImage("avatar1.png"),
//                     ),
//                   ),
//                   onPressed: () {
//                     // Handle notification icon press
//                   },
//                 ),
//                 SizedBox(height: 8.0),
//                 IconButton(
//                   icon: Icon(FontAwesomeIcons.heart),
//                   onPressed: () {
//                     // Handle settings icon press
//                   },
//                 ),
//                 Text("812"),
//                 SizedBox(height: 8.0),
//                 IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
//                 Text("234"),
//                 SizedBox(height: 8.0),
//                 IconButton(
//                   icon: Icon(FontAwesomeIcons.share),
//                   onPressed: () {
//                     // Handle settings icon press
//                   },
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//               left: 36,
//               bottom: 90,
//               child: Text(
//                 "@javaed .Chunky",
//                 style: TextStyle(color: Colors.white),
//               )),
//           Positioned(
//               left: 36,
//               bottom: 73,
//               child: Text(
//                 "@javaed .Chunky Like it when u feel",
//                 style: TextStyle(color: Colors.white),
//               ))
//         ],
//       ),
//       floatingActionButton: Container(
//         width: 260,
//         height: 50,
//         margin: EdgeInsets.only(right: 130),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(45),
//           color: Color.fromARGB(255, 212, 230, 245),
//         ),
//         child: Row(
//           children: [
//             Padding(padding: EdgeInsets.only(left: 10)),
//             Icon(Icons.home),
//             Padding(padding: EdgeInsets.only(left: 60)),
//             SizedBox(
//               width: 30,
//             ),
//             Icon(
//               FontAwesomeIcons.compass,
//               color: Colors.blue,
//             ),
//             SizedBox(
//               width: 30,
//             ),
//             Padding(padding: EdgeInsets.only(left: 40)),
//             Icon(Icons.person),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class FontAwesomeIcons {
// }