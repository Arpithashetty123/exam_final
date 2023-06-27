import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/authentications/login_page.dart';
import 'package:flutter_application_1/apps/features/utils/container_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/custom_icon_widget.dart';
import '../utils/pagestyle.dart';

class mainScreenPage extends StatelessWidget {
  const mainScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
      alignment: Alignment.topCenter,
      child: Column(
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
          Text(
            "toddddler",
            style: toddddler()
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomOtherSignupButton(
                  text: "Log In",
                  assetPath:
                      "assets/images/smiling-baby-biting-right-index-finger-1648374.png"),
              CustomOtherSignupButton(
                  text: "Google", assetPath: "assets/images/googlelogo.png"),
                 
            ],
          ),
           SizedBox(
                    height: 50,
                  ),
                 LoginButton(borderRadius: 3,  height: 70,width: 400, containerColor: Color.fromRGBO(102, 211, 246, 1), childWidget:   Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont't have an account?", style: TextStyle( fontSize: 20,letterSpacing: 1),),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        letterSpacing: 1,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
                  )
        ],
      ),
    ));
  }
}
