import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/login_with_phone/back_arrow.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../myrouter/routes.dart';
import '../../utils/Button_widgets/container_widget.dart';
import '../../utils/pagestyle.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.1, top: screenHeight * 0.05, right: screenWidth * 0.08),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackArrowWidget(),
                SizedBox(
                  height: screenHeight * 0.08,
                ),
                Text(
                  "Enter OTP",
                  style: verificationColour(),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Text(
                  "An OTP has been sent as an image\nto your phone. Please enter the \nsame below.",
                  style: verificationsubColour(),
                ),
                SizedBox(
                  height: screenHeight * 0.035,
                ),
                VerificationCode(
                  onCompleted: (value) {},
                  onEditing: (value) {},
                  underlineUnfocusedColor: const Color.fromRGBO(102, 211, 246, 1),
                  underlineWidth: 4,
                  margin: EdgeInsets.all(screenWidth * 0.04),
                  textStyle: TextStyle(fontSize: 20.0, color: Colors.red[900]),
                  keyboardType: TextInputType.number,
                  underlineColor: const Color.fromARGB(255, 19, 19, 19),
                  length: 4,
                  cursorColor: const Color.fromARGB(255, 12, 13, 13),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Center(
                  child: Text(
                    "Resend",
                    style: GoogleFonts.poppins(color: Color.fromARGB(255, 248, 74, 132)),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                GestureDetector(
                  onTap: () {
                   Navigator.pushNamed(context, MyRoutes.welcomePage);
                  },
                  child: LoginButton(
                    height: screenHeight * 0.09,
                    width: screenWidth * 0.9,
                    borderRadius: screenWidth * 0.01,
                    containerColor: Color.fromRGBO(33, 39, 56, 1),
                    childWidget: const Center(
                      child: Text(
                        "Submit OTP",
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
