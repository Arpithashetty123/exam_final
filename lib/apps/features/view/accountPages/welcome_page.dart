import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/login_with_phone/close_widget.dart';
import '../../../../myrouter/routes.dart';
import '../../utils/Button_widgets/container_widget.dart';
import '../../utils/Button_widgets/phone_widget.dart';
import '../../utils/login_with_phone/glad_to_have_widget.dart';
import '../../utils/pagestyle.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.1,
              top: screenWidth * 0.08,
              right: screenWidth * 0.08),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CloseIconWidget(),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Text(
                  "Glad to have you.",
                  style: verificationColour(),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Text(
                  "But before we continue, we will\nneed to know a little bit about you too.",
                  style: verificationsubColour(),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                phoneNumberWidget(BorderRadius.circular(screenWidth * 0.15)),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                const CustomInputContainer(
                  hintText: "Your Email",
                  sufixIcon: Icons.email,
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                const CustomInputContainer(
                  hintText: "Password",
                  sufixIcon: Icons.remove_red_eye_outlined,
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                const CustomInputContainer(
                  hintText: "Your Name",
                  sufixIcon: Icons.person,
                ),
                SizedBox(
                  height: screenHeight * 0.06,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.profilePage);
                  },
                  child: LoginButton(
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.08,
                    borderRadius: 50,
                    containerColor: Color.fromRGBO(102, 211, 246, 1),
                    childWidget: const Center(
                      child: Text(
                        "Sign Up",
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
