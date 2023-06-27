import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/follows_widget.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int selectedIndex = 0;
  final List<String> categories = ['System', 'Follows', 'Likes', 'Comments'];
  final List<Widget> contentWidgets = [
    Text('System Content'),
    MyListView(),
    Text('Likes Content'),
    Text('Comments Content'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.blue,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 50, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Notifications",
              style: const TextStyle(fontSize: 40),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.lightBlue,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 5, top: 5, left: 5),
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: selectedIndex == index ? Colors.blue : Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          categories[index],
                          style: TextStyle(
                            color: selectedIndex == index ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: contentWidgets[selectedIndex],
            ),
          ],
        ),
      ),
    );
  }
}
