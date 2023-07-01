import 'package:flutter/material.dart';

class FindPage extends StatefulWidget {
  const FindPage({Key? key}) : super(key: key);

  @override
  State<FindPage> createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  final List<String> data = [
    "Cooking",
    "Baby Products",
    "Health",
    "Culture",
    "Pregnancy",
    "Cute",
    "Lifestyle",
    "Art",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: DefaultTabController(
              length: data.length,
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                    child: TabBar(
                      isScrollable: true,
                      labelPadding: const EdgeInsets.all(20),
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                      unselectedLabelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                      tabs: data.map((title) => Text(title)).toList(),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: data.map((title) {
                        return Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: GridView.builder(
                            itemCount: 10,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2),
                              itemBuilder: (context, index) {
                                return Image.asset("assets/images/Rectangle 37.png");
                              },),
                          // child: Image.asset("assets/images/Rectangle 37.png")
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
