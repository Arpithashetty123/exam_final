import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/view/welcome_page.dart';

import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/container_widget.dart';
import '../utils/pagestyle.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(102, 211, 246, 1),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 35,
                    )),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                "Enter OTP",
                style: verificationColour(),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "An OTP has been sent as an image\nto your phone. Please enter the \nsame below.",
                  style: verificationsubColour()),
              SizedBox(
                height: 40,
              ),
              VerificationCode(
                onCompleted: (value) {},
                onEditing: (value) {},
                textStyle: TextStyle(fontSize: 20.0, color: Colors.red[900]),
                keyboardType: TextInputType.number,
                underlineColor: const Color.fromARGB(255, 19, 19, 19),
                length: 4,
                cursorColor: const Color.fromARGB(255, 12, 13, 13),
              ),
              SizedBox(
                height: 30,
              ),
              Center(child: Text("Resend",style: GoogleFonts.poppins(color: Color.fromARGB(255, 248, 74, 132)),)),
               SizedBox(
                height:50,
              ),
              GestureDetector(
                  onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return WelcomePage();
                  },));
                },
                child: LoginButton(
                  height: 70,
                  width: 400,
                  borderRadius: 3,
                    containerColor: Color.fromRGBO(33, 39, 56, 1),
                    childWidget: Center(
                        child: Text(
                      "Submit OTP",
                      style: TextStyle(color: Colors.white,fontSize: 20),
                    ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
