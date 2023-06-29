import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/apps/features/view/verification_page.dart';

import '../utils/Button_widgets/button_widget.dart';
import '../utils/Button_widgets/container_widget.dart';
import '../utils/Button_widgets/phone_widget.dart';
import '../utils/login_with_phone/back_arrow.dart';
import '../utils/pagestyle.dart';

class MyNumberPage extends StatefulWidget {
  const MyNumberPage({super.key});

  @override
  State<MyNumberPage> createState() => _MyNumberPageState();
}

class _MyNumberPageState extends State<MyNumberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 50,right: 25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackArrowWidget(),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Enter Number",
                  style: verificationColour(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Enter your number with country \ncode, we will be sending an OTP to\nthis number",
                    style: verificationsubColour()),
                SizedBox(
                  height: 60,
                ),
                phoneNumberWidget(BorderRadius.circular(30)),
                SizedBox(
                  height: 100,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const VerificationPage();
                    },));
                  },
                  child: const LoginButton(
                    height: 70,
                    width: 400,
                    borderRadius: 3,
                      containerColor: Color.fromRGBO(33, 39, 56, 1),
                      childWidget: Center(
                          child: Text(
                        "Submit Number",
                        style: TextStyle(color: Colors.white,fontSize: 20),
                      ))),
                )
                  ],
            ),
          ))
      ),
    );
  }
}
