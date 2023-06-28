import 'package:flutter/material.dart';

import 'package:flutter_application_1/apps/features/view/home_page.dart';

import 'package:google_fonts/google_fonts.dart';


import '../utils/Button_widgets/container_widget.dart';
import '../utils/Button_widgets/phone_widget.dart';
import '../utils/Button_widgets/text_button.dart';
import '../utils/pagestyle.dart';
import '../utils/Button_widgets/textfield_widgets.dart';

import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            Image.asset(
              "assets/images/child-4.png",
              scale: 0.8,
            ),
            const SizedBox(
              height: 10,
            ),
            Text("toddddler", style: toddddler()),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 400,
              child: phoneNumberWidget(),
            ),
            SizedBox(
              height: 20,
            ),
            TextFieldWidget(),
            SizedBox(
              height: 20,
            ),
            SizedBox(width: 400, child: TextButtonWidget("Name")),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: LoginButton(
                  containerColor: const Color.fromRGBO(102, 211, 246, 1),
                  borderRadius: 3,
                  height: 70,
                  width: 400,
                  childWidget: Center(
                    child: Text("Sign Up", style: loginColour2()),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " Have an account?",
                  style: GoogleFonts.poppins(fontSize: 15, letterSpacing: 1),
                ),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  child: Text(
                    "log In",
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
