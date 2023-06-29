import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

class CloseIconWidget extends StatelessWidget {
  const CloseIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(width: 3,
                                  color: Color.fromRGBO(102, 211, 246, 1))),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                AntDesign.close,
                                color: Color.fromRGBO(102, 211, 246, 1),
                                size: 35,
                              )),
                        );
  }
}