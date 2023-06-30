import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import '../../../myrouter/routes.dart';
import '../utils/Button_widgets/container_widget.dart';
import '../utils/Button_widgets/phone_widget.dart';
import '../utils/Button_widgets/text_button.dart';
import '../utils/pagestyle.dart';
import '../utils/Button_widgets/textfield_widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenSize.height * 0.1,
            ),
            Image.asset("assets/images/child-4.png", scale: 0.8),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            Text(
              "toddddler",
              style: toddddler(),
            ),
            SizedBox(
              height: screenSize.height * 0.04,
            ),
            SizedBox(
              width: 400,
              child: phoneNumberWidget(BorderRadius.circular(5)),
            ),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            TextFieldWidget(),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            SizedBox(
              width: 400,
              child: TextButtonWidget("Name", BorderRadius.circular(10)),
            ),
            SizedBox(
              height: screenSize.height * 0.04,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.homeScreen);
              },
              child: LoginButton(
                containerColor: Color.fromRGBO(102, 211, 246, 1),
                borderRadius: 3,
                height: screenSize.height * 0.1,
                width: 400,
                childWidget: Center(
                  child: Text(
                    "Sign Up",
                    style: loginColour2(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Have an account?",
                  style: GoogleFonts.poppins(fontSize: 15, letterSpacing: 1),
                ),
                SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.loginScreen);
                  },
                  child: Text(
                    "Log In",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
