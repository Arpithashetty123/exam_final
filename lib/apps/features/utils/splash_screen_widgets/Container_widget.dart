import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget SplashContainer(double height, double width ) {
  return Container(
              height: height,
              width: width,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                 gradient: LinearGradient(
                  begin: Alignment.center,
                
                  colors: [
                    Color.fromRGBO(240, 249, 254,1),
                    Color.fromRGBO(201, 239, 252,1)
                  ]
                  )
              ),
            );
}