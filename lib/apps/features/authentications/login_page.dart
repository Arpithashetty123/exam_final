import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/authentications/sign_up.dart';
import 'package:flutter_application_1/apps/features/utils/container_widget.dart';
import 'package:flutter_application_1/apps/features/utils/pagestyle.dart';

import 'package:google_fonts/google_fonts.dart';

import '../utils/textfield_widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 150,
            ),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/child-4.png",
                      ),
                      fit: BoxFit.contain)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "toddddler",
              style: toddddler(),
            ),
            SizedBox(
              height: 140,
            ),
            TextFieldWidget(),
            SizedBox(height:25),
            LoginButton(
                containerColour: Color.fromRGBO(33, 39, 56, 1),
                newWidget: Center(
                  child: Text("Log In", style: loginColour()),
                )),
            SizedBox(
              height: 25,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      ));
                },
                child: Text(
                  "Or Sign Up",
                  style: GoogleFonts.poppins(
                    decoration: TextDecoration.underline,
                      color: const Color.fromARGB(255, 26, 179, 249),
                      fontSize: 20),
                ))
          ]),
        ),
      ),
    );
  }
}
