import 'package:flutter/material.dart';

class NewContainer extends StatelessWidget {
  const NewContainer({super.key, required this.iconData, required this.iconColor, required this.containerColor, required this.borderColor, });
   final IconData iconData;
   final Color iconColor;
   final Color containerColor;
   final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return  Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: containerColor,
                    // color: Colors.transparent,
                   border: Border.all(color: borderColor,width: 2)
                    ),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      iconData,
                      color: iconColor,
                      // Icons.arrow_back,
                      // color: Colors.white,
                    )),
              );
  }
}