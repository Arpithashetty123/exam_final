import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/pagestyle.dart';
import '../../../../myrouter/routes.dart';
import '../../utils/Button_widgets/text_button.dart';
import '../../utils/settingsPage/app_bar_widget.dart';

class SetNamePage extends StatefulWidget {
  const SetNamePage({super.key});

  @override
  State<SetNamePage> createState() => _SetNamePageState();
}

class _SetNamePageState extends State<SetNamePage> {
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
          Navigator.pushNamed(context, MyRoutes.editProfileWidget);
        },
      ),
      body: Padding(
          padding: EdgeInsets.only(
            left: screenWidth * 0.08,
            top: screenHeight * 0.07,
            right: screenWidth * 0.05,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Set Your Name", style: verificationColour()),
            SizedBox(
              height: screenHeight * 0.08,
            ),
            SizedBox(
                width: 400,
                child: TextButtonWidget(
                    "Enter Your Name", BorderRadius.circular(30))),
          ])),
    );
  }
}
