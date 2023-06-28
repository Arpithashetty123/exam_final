import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/authentications/sign_up.dart';
import 'package:flutter_application_1/apps/features/utils/pagestyle.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/Button_widgets/container_widget.dart';
import '../utils/Button_widgets/textfield_widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(left: 25,right: 25),
          child: Column(
            children: [
            const SizedBox(
              height: 150,
            ),
           Image.asset("assets/images/child-4.png",scale: 0.8,),
            const SizedBox(
              height: 12,
            ),
            Text(
              "toddddler",
              style: toddddler(),
            ),
            SizedBox(
              height: 120,
            ),
            TextFieldWidget(),
            SizedBox(height: 50),
            LoginButton(
                borderRadius: 10,
                height: 70,
                width: 400,
                containerColor: Color.fromRGBO(33, 39, 56, 1),
                childWidget: Center(
                  child: Text("Log In", style: loginColour()),
                )),
            SizedBox(
              height: 40,
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
                      color: Color.fromRGBO(102, 211, 246, 1),
                      fontSize: 18),
                ))
          ]),
        ),
      ),
    );
  }
}
