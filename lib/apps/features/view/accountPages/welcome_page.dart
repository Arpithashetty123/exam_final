import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/login_with_phone/close_widget.dart';

import 'package:flutter_application_1/apps/features/view/profile_page.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import '../../utils/Button_widgets/container_widget.dart';
import '../../utils/Button_widgets/phone_widget.dart';
import '../../utils/login_with_phone/glad_to_have_widget.dart';
import '../../utils/pagestyle.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
                       CloseIconWidget(),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Glad to have you.",
                          style: verificationColour(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "But before we continue, we will\nneed to know a little bit about you too.",
                          style: verificationsubColour(),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        phoneNumberWidget(BorderRadius.circular(30)),
                        SizedBox(
                          height: 30,
                        ),
                        const CustomInputContainer(
                          hintText: "Your Email",
                          sufixIcon: Icons.email,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        const CustomInputContainer(
                          hintText: "Password",
                          sufixIcon: Icons.remove_red_eye_outlined,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        const CustomInputContainer(
                          hintText: "Your Name",
                          sufixIcon: Icons.person,
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ProfilePage();}));
                        },
                          child: const LoginButton(
                              width: 380,
                               height: 65,
                              borderRadius: 30,
                              containerColor: Color.fromRGBO(102, 211, 246, 1),
                              childWidget: Center(
                                  child: Text(
                                "Sign Up",
                                style: TextStyle(color: Colors.white,fontSize: 20),
                              ))),
                        )
                      ]),
                ))));
  }
}
