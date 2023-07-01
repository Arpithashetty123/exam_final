import 'package:flutter/material.dart';

class BackGroundPage extends StatelessWidget {
  const BackGroundPage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration:  BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
                        decoration: BoxDecoration(
                          gradient:  LinearGradient(
                            begin: Alignment.bottomRight,
                            stops: const [0.3, 0.9],
                            colors: [
                             Colors.black.withOpacity(.4),
                             Colors.black.withOpacity(.2)
                            ],
                          ),
                        ),)
      );
  }
}