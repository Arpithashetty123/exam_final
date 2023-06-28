import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/authentications/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/Button_widgets/container_widget.dart';
import '../utils/Button_widgets/Custom_other_signin.dart.dart';

class MainScreenPage extends StatelessWidget {
  const MainScreenPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 320,
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
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomOtherSignupButton(
                    buttonColor: Color.fromRGBO(33, 39, 56, 1),
                    textColor: Colors.white,
                    text: "Log In",
                    assetPath:
                        "assets/images/smiling-baby-biting-right-index-finger-1648374.png"),
                CustomOtherSignupButton(
                    buttonColor: Colors.white,
                    textColor: Colors.black,
                    text: "Google",
                    assetPath: "assets/images/googlelogo.png"),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: LoginButton(
                borderRadius: 5,
                height: 90,
                width: 400,
                containerColor: Color.fromRGBO(102, 211, 246, 1),
                childWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont't have an account?",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                      ),
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
                        "Sign Up",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.blue.shade900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
