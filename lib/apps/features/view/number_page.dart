import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/apps/features/view/verification_page.dart';

import '../utils/button_widget.dart';
import '../utils/Button_widgets/container_widget.dart';
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
          padding: const EdgeInsets.only(left: 25, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(102, 211, 246, 1),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 35,
                    )),
              ),
              SizedBox(
                height: 60,
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
                height: 40,
              ),
              
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return VerificationPage();
                  },));
                },
                child: LoginButton(
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
          ))
      ),
    );
  }
}
