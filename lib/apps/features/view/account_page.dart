import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/Button_widgets/button_widget.dart';
import '../utils/pagestyle.dart';
import 'number_page.dart';
class MainInfoPage extends StatefulWidget {
  const MainInfoPage({super.key});

  @override
  _MainInfoPageState createState() => _MainInfoPageState();
}

class _MainInfoPageState extends State<MainInfoPage> {
    int currentIndex = 0;
   void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 65,
            ),
           Image.asset("assets/images/child-4.png",scale: 0.8,),
            const SizedBox(
              height: 35,
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
            Text(
              "toddddler",
              style: toddddler(),
            ),
            const SizedBox(
              height: 45,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyNumberPage(),
                  ),
                );
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
            const SizedBox(height:28),
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
            SizedBox(
              height: 180,
            ),
            Container(
            
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(50),
              ),
              height: 80,
              width: 380,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 GestureDetector(
                    onTap: () => onTabTapped(0),
                    child: buildIcon(Icons.home, currentIndex, 0),
                  ),
                  GestureDetector(
                    onTap: () => onTabTapped(1),
                    child: buildIcon(Ionicons.compass, currentIndex, 1),
                  ),
                  GestureDetector(
                    onTap: () => onTabTapped(2),
                    child: buildIcon(Icons.person, currentIndex, 2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIcon(IconData icon,int currentIndex,int index,) {
    return Icon(
      icon,
      size: 40,
      color: currentIndex == index ? Color.fromRGBO(33, 39, 56, 1) : Colors.grey.shade500,
    );
  }
}
