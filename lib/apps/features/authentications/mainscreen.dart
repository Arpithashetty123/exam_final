import 'package:flutter/material.dart';

import 'package:flutter_application_1/apps/features/utils/splash_screen_widgets/image_widget.dart';
import 'package:flutter_application_1/apps/features/utils/splash_screen_widgets/text_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../myrouter/routes.dart';
import '../utils/Button_widgets/container_widget.dart';
import '../utils/Button_widgets/Custom_other_signin.dart.dart';

class MainScreenPage extends StatelessWidget {
  const MainScreenPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.2,
          ),
          SplashImage(),
          const SizedBox(
            height: 20,
          ),
          const SplashTextWidget(),
          SizedBox(
            height: screenHeight * 0.15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.loginScreen);
                },
                child: CustomOtherSignupButton(
                  buttonColor: const Color.fromRGBO(33, 39, 56, 1),
                  textColor: Colors.white,
                  text: "Log In",
                  assetPath:
                      "assets/images/smiling-baby-biting-right-index-finger-1648374.png",
                ),
              ),
              CustomOtherSignupButton(
                buttonColor: Colors.white,
                textColor: Colors.black,
                text: "Google",
                assetPath: "assets/images/googlelogo.png",
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.05,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: LoginButton(
              borderRadius: 5,
              height: screenHeight * 0.09,
              width: screenWidth * 0.9,
              containerColor: Color.fromRGBO(102, 211, 246, 1),
              childWidget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: GoogleFonts.poppins(
                      fontSize: screenHeight * 0.02,
                    ),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.loginScreen);
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                        fontSize: screenHeight * 0.02,
                        color: Colors.blue.shade900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
