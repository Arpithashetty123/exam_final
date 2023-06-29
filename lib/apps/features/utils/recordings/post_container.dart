import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Button_widgets/container_widget.dart';
import '../Button_widgets/textfield_widgets.dart';
import '../pagestyle.dart';
import 'circle_avatr_widget.dart';

class PostContainer extends StatelessWidget {
  const PostContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 440,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(60))),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 400,
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefix: SizedBox(
                    width: 15,
                  ),
                  prefixIcon: buildCircleAvatar(
                      "assets/images/Ellipse 11.png", Colors.green),
                  hintText: "Write a caption",
                  hintStyle: GoogleFonts.poppins(
                      color: Colors.grey.shade300, fontSize: 18)),
            ),
          ),
           SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 400,
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefix: SizedBox(
                    width: 15,
                  ),
                  prefixIcon: Icon(FontAwesome.tags,color: const Color.fromARGB(255, 2, 14, 32),size: 25,),
                  hintText: "Add a Tag",
                  hintStyle: GoogleFonts.poppins(
                      color: Colors.grey.shade300, fontSize: 18)),
            ),
            
          ),
          SizedBox(
            height: 30,
          ),
          LoginButton(
                  containerColor: const Color.fromRGBO(102, 211, 246, 1),
                  borderRadius: 30,
                  height: 70,
                  width: 350,
                  childWidget: Center(
                    child: Text("Post", style: loginColour2()),
                  )),
        ],
      ),
    );
  }
}