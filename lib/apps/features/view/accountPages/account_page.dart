import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/splash_screen_widgets/image_widget.dart';
import 'package:flutter_application_1/apps/features/utils/splash_screen_widgets/text_widget.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../myrouter/routes.dart';
import '../../utils/Button_widgets/Custom_container.dart';
import '../../utils/login_with_phone/nav_container.dart';


class MainInfoPage extends StatefulWidget {
  const MainInfoPage({super.key});

  @override
  _MainInfoPageState createState() => _MainInfoPageState();
}

class _MainInfoPageState extends State<MainInfoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 65,
            ),
            SplashImage(),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Sign Up/Login for",
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: const Color.fromRGBO(102, 211, 246, 1),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SplashTextWidget(),
            const SizedBox(
              height: 45,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.myNumberPage);
              },
              child: const CustomContainer(
                iconColor: Colors.white,
                textColor: Colors.white,
                backgroundColor: Color.fromRGBO(102, 211, 246, 1),
                icon: FontAwesome.mobile_phone,
                text: "Phone Number",
              ),
            ),
            const SizedBox(height: 15),
            const CustomContainer(
              iconColor: Colors.black12,
              textColor: Colors.black87,
              backgroundColor: Colors.white,
              icon: AntDesign.google,
              text: "Continue with Google",
            ),
            const SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(
                text: TextSpan(
                  text: '      By continuing, you agree to the ',
                  style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(102, 211, 246, 1),
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms and Conditions',
                      style: GoogleFonts.poppins(
                        color: Color.fromRGBO(102, 211, 246, 1),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(text: ' and confirm you have read '),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: GoogleFonts.poppins(
                        color: Color.fromRGBO(102, 211, 246, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 180,
            ),
            NavContainer(),
          ],
        ),
      ),
    );
  }

  Widget buildIcon(
    IconData icon,
    int currentIndex,
    int index,
  ) {
    return Icon(
      icon,
      size: 40,
      color: currentIndex == index
          ? Color.fromRGBO(33, 39, 56, 1)
          : Colors.grey.shade500,
    );
  }
}
