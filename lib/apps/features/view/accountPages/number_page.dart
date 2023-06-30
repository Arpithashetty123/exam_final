import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../myrouter/routes.dart';
import '../../utils/Button_widgets/container_widget.dart';
import '../../utils/Button_widgets/phone_widget.dart';
import '../../utils/login_with_phone/back_arrow.dart';
import '../../utils/pagestyle.dart';

class MyNumberPage extends StatefulWidget {
  const MyNumberPage({Key? key}) : super(key: key);

  @override
  State<MyNumberPage> createState() => _MyNumberPageState();
}

class _MyNumberPageState extends State<MyNumberPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.1,
              top: screenHeight * 0.06,
              right: screenWidth * 0.08),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackArrowWidget(),
                SizedBox(
                  height: screenHeight * 0.08,
                ),
                Text(
                  "Enter Number",
                  style: verificationColour(),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Text(
                  "Enter your number with country \ncode, we will be sending an OTP to\nthis number",
                  style: verificationsubColour(),
                ),
                SizedBox(
                  height: screenHeight * 0.06,
                ),
                phoneNumberWidget(BorderRadius.circular(screenWidth * 0.3)),
                SizedBox(
                  height: screenHeight * 0.1,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.verificationpage);
                  },
                  child: LoginButton(
                    height: screenHeight * 0.09,
                    width: screenWidth * 0.9,
                    borderRadius: screenWidth * 0.01,
                    containerColor: Color.fromRGBO(33, 39, 56, 1),
                    childWidget: const Center(
                      child: Text(
                        "Submit Number",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
