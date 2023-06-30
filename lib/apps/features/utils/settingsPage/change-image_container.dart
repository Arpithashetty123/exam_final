import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../myrouter/routes.dart';
import '../Button_widgets/container_widget.dart';
import '../Button_widgets/sinup_buttom.dart';

class ProfileEditWidget extends StatelessWidget {
  const ProfileEditWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return LoginButton(
      height: 60,
      width: 360,
      borderRadius: 30,
      containerColor: const Color.fromARGB(255, 241, 247, 252),
      childWidget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("  Change Image", style: GoogleFonts.poppins(fontSize: 16)),
          Container(
            height: 60,
            width: 120,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(102, 211, 246, 1),
              borderRadius: BorderRadius.circular(30),
            ),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25.0),
                    ),
                  ),
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 400,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 80,
                          ),
                          const SinUpButton(
                            containerColor: Color.fromRGBO(102, 211, 246, 1),
                            text: "Take a Photo",
                            textColor: Colors.white,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, MyRoutes.addChildWiget);
                            },
                            child: const SinUpButton(
                              textColor: Colors.white,
                              containerColor: Color.fromRGBO(33, 39, 56, 1),
                              text: "Chose a Photo",
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SinUpButton(
                              textColor: Colors.black,
                              containerColor: Colors.grey.shade100,
                              text: "Cancel",
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/Ellipse 32.png"),
                  ),
                  Icon(
                    EvilIcons.chevron_right,
                    size: 40,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
