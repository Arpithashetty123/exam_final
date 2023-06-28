import 'package:flutter/cupertino.dart';

import '../pagestyle.dart';

class SplashTextWidget extends StatelessWidget {
  const SplashTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         Positioned(
            bottom: 358,
            left: 100,
            child: Text("toddddler", style: toddddler1()),
          ),
          Positioned(
            bottom: 365,
            left: 100,
            child: Text("toddddler", style: toddddler()),
          ),
      ],
    );
  }
}