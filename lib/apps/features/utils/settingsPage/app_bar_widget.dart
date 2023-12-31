import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';



class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onLeadingPressed;
  final VoidCallback onActionPressed;

  const AppBarWidget({
    Key? key,
    required this.onLeadingPressed,
    required this.onActionPressed,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.5,
      shadowColor: Colors.black,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: onLeadingPressed,
        icon: const Icon(
          Icons.arrow_back,
          size: 35,
          color: Color.fromRGBO(102, 211, 246, 1),
        ),
      ),
      actions: [
        IconButton(
          onPressed: onActionPressed,
          icon: const Icon(
            Feather.check,
            size: 35,
            color: Color.fromRGBO(102, 211, 246, 1),
          ),
        )
      ],
    );
  }
}
