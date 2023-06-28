import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesPage extends StatelessWidget {
   CategoriesPage({super.key});
  final List<String> categories = [
    "Cooking",
    "Baby Products",
    "Health",
    "Culture",
    "Pregnancy",
    "Cute",
    "Lifestyle",
    "Art",
  ];

  final List<Color> containerColors = [
    Color.fromRGBO(255, 217, 218, 1),
  Color.fromRGBO(222, 245, 252,1),
   Color.fromRGBO(228, 252, 222 ,1),
   Color.fromRGBO(233, 217, 255 ,1),
   
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 65, 
              child: ListView.builder(
                
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 125,
                      decoration: BoxDecoration(
                        color: containerColors[index % containerColors.length],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          categories[index],
                          style:  GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],);
  }
}
