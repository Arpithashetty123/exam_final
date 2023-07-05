import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTabbar extends StatefulWidget {
  const MyTabbar({super.key});

  @override
  State<MyTabbar> createState() => _MyTabbarState();
}

class _MyTabbarState extends State<MyTabbar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Colors.black,
      labelStyle:GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),
      indicatorSize: TabBarIndicatorSize.label,
      indicator: UnderlineTabIndicator(
          borderRadius: BorderRadius.circular(2),
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 3,
          )),
      controller: _tabController,
      tabs: const [
        Tab(
          text: 'New Post',
        ),
        Tab(text: 'Tagged'),
      ],
    );
  }
}
