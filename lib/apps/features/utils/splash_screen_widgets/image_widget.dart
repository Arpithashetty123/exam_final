import 'package:flutter/cupertino.dart';
class SplashImage extends StatelessWidget {
  const SplashImage({super.key,});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 360,
          left: 151,
          child: Image.asset(
            "assets/images/child-7.png",
             scale: 0.7,
          ),
        ),
        Positioned(
         top: 364,
          left: 153,
          child: Image.asset(
            "assets/images/child-4.png",
            scale: 0.68,
          ),
        ),
      ],
    );
  }
}
