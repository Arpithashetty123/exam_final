import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/pagestyle.dart';
import 'package:flutter_application_1/apps/features/view/settings_page/set_user_name.dart';

import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/Button_widgets/text_button.dart';
import '../../utils/settingsPage/app_bar_widget.dart';
import 'AnotherPage .dart';
import 'Bio_page.dart';
import 'nextone.dart';

class SetNamePage extends StatefulWidget {
  const  SetNamePage({super.key});

  @override
  State< SetNamePage> createState() => _SetNamePageState();
}

class _SetNamePageState extends State< SetNamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBarWidget(
        onLeadingPressed: () {
          Navigator.pop(context);
        },
        onActionPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return AnotherPage4();
            },
          ));
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 80,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Set Your Name",
              style: verificationColour()
            ),
            SizedBox(
              height: 60,
            ),
          SizedBox(
                width: 400,
                child: TextButtonWidget(
                    "Enter Your Name", BorderRadius.circular(30))),
            
          ]
           )
          
        ),
      );
  
  }
}
