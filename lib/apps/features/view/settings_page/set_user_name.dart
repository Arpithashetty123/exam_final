import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/pagestyle.dart';
import 'package:flutter_application_1/apps/features/view/settings_page/set_name.dart';
import '../../utils/Button_widgets/text_button.dart';
import '../../utils/settingsPage/app_bar_widget.dart';


class SetUserNamePage extends StatefulWidget {
  const SetUserNamePage({Key? key});

  @override
  State<SetUserNamePage> createState() => _SetUserNamePageState();
}

class _SetUserNamePageState extends State<SetUserNamePage> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBarWidget(
        onLeadingPressed: () {
          Navigator.pop(context);
        },
        onActionPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return SetNamePage();
            },
          ));
        },
      ),
      body: 
        Padding(
        padding: EdgeInsets.only(
          left: screenWidth * 0.08,
          top: screenHeight * 0.07,
          right: screenWidth * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Set Your User Name",
              style: verificationColour(),
            ),
             SizedBox(
              height: screenHeight * 0.08,
            ),
            SizedBox(
              width: screenWidth * 0.8,
              child: TextButtonWidget(
                "Set User Name",
                BorderRadius.circular(screenWidth * 0.3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
