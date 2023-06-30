import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashImage extends StatelessWidget {
  const SplashImage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/child-7.png",
          scale: 0.72,
        ),
        Image.asset(
          "assets/images/child-4.png",
          scale: 0.68,
        ),
      ],
    );
  }
}
