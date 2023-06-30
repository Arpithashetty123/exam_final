import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/Button_widgets/text_button.dart';
import 'package:flutter_application_1/apps/features/utils/pagestyle.dart';
import '../../../../myrouter/routes.dart';
import '../../utils/settingsPage/app_bar_widget.dart';

class SetGenderPage extends StatefulWidget {
  const SetGenderPage({Key? key});

  @override
  State<SetGenderPage> createState() => _SetGenderPageState();
}

class _SetGenderPageState extends State<SetGenderPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBarWidget(
        onLeadingPressed: () {
          Navigator.pop(context);
        },
        onActionPressed: () {
          Navigator.pushNamed(context, MyRoutes.bioPage);
        },
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: screenWidth * 0.08,
          top: screenHeight * 0.07,
          right: screenWidth * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Set Your Gender",
              style: verificationColour(),
            ),
            SizedBox(
              height: screenHeight * 0.08,
            ),
            SizedBox(
              width: screenWidth * 0.9,
              child: TextButtonWidget(
                "Enter Your Gender",
                BorderRadius.circular(screenHeight * 0.06),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
