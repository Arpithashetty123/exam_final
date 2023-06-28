import 'package:flutter/material.dart';
import '../authentications/mainscreen.dart';
import '../utils/splash_screen_widgets/Container_widget.dart';
import '../utils/splash_screen_widgets/image_widget.dart';
import '../utils/splash_screen_widgets/text_widget.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key, });
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  Future<void> _navigateToNextScreen() async {
   
    await Future.delayed(const Duration(seconds: 5));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) => const MainScreenPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child:SplashContainer(800,800)
          ),
          Positioned(
            top: 150,
            left: 300,
            child: SplashContainer(300, 300)
          ),
          Positioned(
            bottom: 0,
            right: 220,
           child: SplashContainer(400, 380),
          ),
         const SplashImage(),
          const Positioned(
            top: 180,
            right: 60,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage(
                  "assets/images/smiling-baby-biting-right-index-finger-1648374.png"),
            ),
          ),
          const Positioned(
            bottom: 100,
            right: 190,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 40,
              backgroundImage:
                  AssetImage("assets/images/child-christmas-baby-cute-37664.png"),
            ),
          ),
          const Positioned(
            top: 220,
            left: 70,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 60,
              backgroundImage: AssetImage("assets/images/baby-in-white-onesie-789786.png"),
            ),
          ),
         const SplashTextWidget(),
        ],
      ),
    );
  }
}
