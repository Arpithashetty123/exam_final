import 'package:flutter/cupertino.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

import '../../view/settings_page/edit_profile_page.dart';

class EditProfileWidget extends StatelessWidget {
  final List<Map<String, dynamic>> anotherProfileList = [
    {
      'Name': 'Name',
      'UserName': '       Micheal Alvarez',
      'icon': EvilIcons.chevron_right
    },
    {
      'Name': 'UserName',
      'UserName': '@mike_ally',
      'icon': EvilIcons.chevron_right
    },
    {
      'Name': 'Gender',
      'UserName': '      Secret',
      'icon': EvilIcons.chevron_right
    },
    {
      'Name': 'Bio',
      'UserName': '           AboutMe',
      'icon': EvilIcons.chevron_right
    },
  ];

  @override
  Widget build(BuildContext context) {
    return EditProfilePage(
      profileList: anotherProfileList,
      text: "Edit your Profile",
    );
  }
}
