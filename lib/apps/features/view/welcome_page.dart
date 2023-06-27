import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/container_widget.dart';
import 'package:flutter_application_1/apps/features/view/profile_page.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../utils/glad_to_have_widget.dart';
import '../utils/pagestyle.dart';

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
                padding: const EdgeInsets.only(left: 25, top: 50),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                  color: Color.fromRGBO(102, 211, 246, 1))),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                AntDesign.close,
                                color: Color.fromRGBO(102, 211, 246, 1),
                                size: 35,
                              )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Glad to have you.",
                          style: verificationColour(),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "But before we continue, we will\nneed to know a little bit about you too.",
                          style: verificationsubColour(),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CustomInputContainer(
                          hintText: "Your Email",
                          sufixIcon: Icons.email,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CustomInputContainer(
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
                          height: 30,
                        ),
                        GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ProfilePage();}));
                        },
                          child: const LoginButton(
                              width: 350,
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
