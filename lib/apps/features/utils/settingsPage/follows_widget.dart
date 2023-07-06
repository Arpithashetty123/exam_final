import 'package:flutter/material.dart';
class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}
class _MyListViewState extends State<MyListView> {
  final List<String> followers = [
    "assets/images/Ellipse 8.png",
    "assets/images/Ellipse 11.png",
    "assets/images/Ellipse 19.png",
    "assets/images/Ellipse 8.png",
    "assets/images/Ellipse 11.png",
    "assets/images/Ellipse 11.png",
    "assets/images/Ellipse 19.png",
  ];
  List<bool>isFollowing = List.filled(7, false);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: followers.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(followers[index]),
            ),
            title: Text('User ${index + 1}'),
            trailing: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(102, 211, 246, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                fixedSize: const Size(120, 25),
              ),
              onPressed: () {
                setState(() {
                  isFollowing[index] = !isFollowing[index];
                });
              },
              child: Text(
                isFollowing[index]?'Follow Back':'Follow',
              ),
            ),
          ),
        );
      },
    );
  }
}
