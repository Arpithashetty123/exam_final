import 'package:flutter/cupertino.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

import 'edit_profile_page.dart';

class AnotherPage extends StatelessWidget {
  final List<Map<String, dynamic>> anotherProfileList = [
    {'Name': 'Setting A', 'UserName': '@a1223', 'icon': EvilIcons.chevron_right},
    {'Name': 'Setting B', 'UserName': '@a1223', 'icon': EvilIcons.chevron_right},
    {'Name': 'Setting C', 'UserName': '@a1223', 'icon': EvilIcons.chevron_right},
  ];

  @override
  Widget build(BuildContext context) {
    return EditProfilePage(profileList: anotherProfileList);
  }
}
