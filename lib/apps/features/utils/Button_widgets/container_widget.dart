import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final double height;
  final double width;
  final double borderRadius;
  final Color containerColor;
  final Widget childWidget;

  const LoginButton({
    Key? key,
    required this.height,
    required this.width,
    required this.borderRadius,
    required this.containerColor,
    required this.childWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: childWidget,
    );
  }
}
