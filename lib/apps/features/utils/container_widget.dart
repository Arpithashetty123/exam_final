import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key,  required this.containerColour, required this.newWidget});
 final  Widget newWidget;
 final Color containerColour;
  @override
  Widget build(BuildContext context) {
    return   Container(
                    height: 70,
                    width: 400,
                    decoration: BoxDecoration(
color: containerColour,
                      //color:
                      borderRadius: BorderRadius.circular(3)
                    ),
                    child: newWidget,
                    );
  }
}