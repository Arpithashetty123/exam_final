import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pagestyle.dart';

class SplashTextWidget extends StatelessWidget {
  const SplashTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text("toddddler", style: toddddler1()),
        Text("toddddler", style: toddddler()),
      ],
    );
  }
}
