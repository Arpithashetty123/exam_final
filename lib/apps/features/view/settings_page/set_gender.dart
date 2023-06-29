import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/Button_widgets/text_button.dart';

import 'package:flutter_application_1/apps/features/utils/pagestyle.dart';
import 'package:flutter_application_1/apps/features/view/settings_page/set_name.dart';

import 'package:flutter_font_icons/flutter_font_icons.dart';


import '../../utils/settingsPage/app_bar_widget.dart';
import 'Bio_page.dart';

class SetGenderPage extends StatefulWidget {
  const SetGenderPage({super.key});

  @override
  State<SetGenderPage> createState() => _SetGenderPageState();
}

class _SetGenderPageState extends State<SetGenderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBarWidget(onLeadingPressed:(){
    Navigator.pop(context);
   } ,
   onActionPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
      return BioPage();
    },));
 
   },),
      body: Padding(
          padding: const EdgeInsets.only(left: 30, top: 80, right: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Set Your Gender", style: verificationColour()),
            SizedBox(
              height: 50,
            ),
            SizedBox(
                width: 400,
                child: TextButtonWidget(
                    "Enter Your Gender", BorderRadius.circular(30))),
           
          ])),
    );
  }
}
