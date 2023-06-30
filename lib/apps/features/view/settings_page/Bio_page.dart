import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/pagestyle.dart';
import '../../../../myrouter/routes.dart';
import '../../utils/settingsPage/app_bar_widget.dart';

class BioPage extends StatefulWidget {
  const BioPage({super.key});
  @override
  State<BioPage> createState() => _BioPageState();
}

class _BioPageState extends State<BioPage> {
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
          Navigator.pushNamed(context, MyRoutes.setUserNamePage);
        },
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: screenWidth * 0.08,
          top: screenHeight * 0.05,
          right: screenWidth * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bio",
              style: verificationColour(),
            ),
            SizedBox(
              height: screenHeight * 0.06,
            ),
            Expanded(
              child: TextField(
                minLines: 10,
                maxLength: 150,
                cursorColor: Colors.grey,
                maxLines: null,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
