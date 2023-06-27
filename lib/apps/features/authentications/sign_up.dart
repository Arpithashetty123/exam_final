import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/container_widget.dart';
import 'package:flutter_application_1/apps/features/view/account_page.dart';
import 'package:flutter_application_1/apps/features/view/verification_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../utils/pagestyle.dart';
import '../utils/textfield_widgets.dart';
import '../view/custom_navigation.dart';
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
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 120,
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
              Text("toddddler", style: toddddler()),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 400,
                child: IntlPhoneField(
                  decoration: InputDecoration(
                      labelText: 'Phone Number',
                      labelStyle: GoogleFonts.poppins(color: Colors.grey.shade400), 
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10)
                      ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                      print(phone.completeNumber);
                  },
              ),
              ),
              TextFieldWidget(),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 5)),
                        hintText: "Name",
                        hintStyle:
                            GoogleFonts.poppins(color: Colors.grey.shade400),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(width: 3, color: Colors.black)))),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: () {
                   Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  CustomNavigationBar()),
                        );
                },
                child: LoginButton(containerColor:  Color.fromRGBO(102,211,246, 1),borderRadius: 3,height: 70,width: 400,
                childWidget:  Center(
                    child: Text("Sign Up", style: loginColour()),
                  )),
              ),
                SizedBox(height: 30,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" Have an account?", style:  GoogleFonts.poppins( fontSize: 18,letterSpacing: 1),),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginPage()),
                        );
                      },
                      child:  Text(
                        "log In",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          letterSpacing: 1,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                
            ],
          ),
        ),
      ),
    );
  }
}
