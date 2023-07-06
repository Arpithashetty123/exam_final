import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/myrouter/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class TabContoller extends StatefulWidget {
  const TabContoller({Key? key, required this.imagePath, required this.imagePathTwo}) : super(key: key);
  
  final String imagePath;
  final String imagePathTwo;

  @override
  State<TabContoller> createState() => _TabContollerState();
}

class _TabContollerState extends State<TabContoller> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            labelColor: Colors.black,
            labelStyle: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),
            indicatorSize: TabBarIndicatorSize.label,
            indicator: UnderlineTabIndicator(
              borderRadius: BorderRadius.circular(2),
              borderSide: const BorderSide(
                color: Colors.blue,
                width: 3,
              ),
            ),
            isScrollable: true,
            tabs: const [
              Tab(text: 'New Post'),
              Tab(text: 'Tagged'),
            ],
          ),
          SizedBox(
            height: 380, 
            child: TabBarView(
              physics: BouncingScrollPhysics(),
              children: [
                GridView.builder(
                  itemCount: 20,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.nearbuy);
                      },
                      child: Image.asset(widget.imagePathTwo, scale: 0.80),
                    );
                  },
                ),
                GridView.builder(
                  itemCount: 20,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.nearbuy);
                      },
                      child: Image.asset(widget.imagePath,scale: 0.95),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
