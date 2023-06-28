import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
       elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Feather.heart),
            label: 'Likes',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.bookmark_o),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(AntDesign.sharealt),
            label: 'share',
          ),
        ], 
      
      
    );
  }
}