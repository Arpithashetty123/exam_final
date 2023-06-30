import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import '../../../../myrouter/routes.dart';

class ProfileAppBar extends StatefulWidget {
  const ProfileAppBar({super.key});

  @override
  State<ProfileAppBar> createState() => _ProfileAppBarState();
}

class _ProfileAppBarState extends State<ProfileAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      expandedHeight: 80,
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 18),
          child: IconButton(
            icon: const Badge(
              child: Icon(
                Ionicons.notifications,
                color: Colors.black,
                size: 30,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.notificationpage);
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: IconButton(
            icon: const Icon(
              Icons.settings,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.settingsPage);
            },
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
