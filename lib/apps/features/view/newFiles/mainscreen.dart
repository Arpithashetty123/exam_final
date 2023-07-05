import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/newPages/new_file_container.dart';
import 'package:flutter_application_1/myrouter/routes.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

class FindPage extends StatefulWidget {
  const FindPage({Key? key}) : super(key: key);

  @override
  State<FindPage> createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  final List<String> data = [
    "Following",
    "Nearby",
    "video",
    "Blog",
    "Internet",
    "For u",
    "Lifestyle",
    "Art",
  ];
  final List<String> images = [
    "assets/images/pexels-photo-1.png",
    "assets/images/pexels-photo-2.png",
    "assets/images/pexels-photo-3.png",
    "assets/images/pexels-photo-2869318.png",
    "assets/images/pexels-photo-1.png",
    "assets/images/photo-of-child-playing-with-wooden-blocks-3933279.png",
    "assets/images/pexels-photo-2.png",
    "assets/images/pexels-photo-3.png",
    "assets/images/pexels-photo-2869318.png",
    "assets/images/photo-of-child-playing-with-wooden-blocks-3933279.png",
  ];
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 40,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimSearchBar(
                  width: 320,
                  helpText: "Search",
                  closeSearchOnSuffixTap: false,
                  textFieldColor: Colors.blue.shade100,
                  suffixIcon: const Icon(Icons.search),
                  textController: textController,
                  color: Colors.blue.shade300,
                  onSuffixTap: () {
                    setState(() {
                      textController.clear();
                    });
                  },
                  onSubmitted: (String) {},
                ),
                // const SizedBox(
                //   width: 10,
                // ),
                const NewContainer(
                    iconData: FontAwesome.video_camera,
                    iconColor: Colors.white,
                    containerColor: Colors.black,
                    borderColor: Colors.black)
                // const CircleAvatar(
                //   radius: 20,
                //   backgroundColor: Colors.black,
                //   child: Icon(,),
                // )
              ],
            ),
          ),
          Expanded(
            child: DefaultTabController(
              length: data.length,
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: Colors.pink,
                      labelColor: Colors.pink,
                      isScrollable: true,
                      labelPadding: const EdgeInsets.all(20),
                      labelStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelStyle: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                      tabs: data.map((title) => Text(title)).toList(),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: data.map((title) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: GridView.builder(
                            itemCount: images.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    // mainAxisExtent: 200,
                                    mainAxisSpacing: 10,
                                    crossAxisCount: 2),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, MyRoutes.nearbuy);
                                  },
                                  child: Image.asset(
                                    images[index],
                                    fit: BoxFit.contain,
                                  ));
                            },
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
