import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
   
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60, 
              child: ListView.builder(
                
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 120,
                      decoration: BoxDecoration(
                        color: containerColors[index % containerColors.length],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          categories[index],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
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
