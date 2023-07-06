import 'package:flutter/material.dart';
import '../../../myrouter/routes.dart';

import '../utils/splash_screen_widgets/Container_widget.dart';
import '../utils/splash_screen_widgets/image_widget.dart';
import '../utils/splash_screen_widgets/text_widget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key});
  
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
    Navigator.pushNamed(context, MyRoutes.mainscreen);
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        final mediaQuery = MediaQuery.of(context);
        return Scaffold(
          body: Stack(
            children: [
              Align(alignment: Alignment.center, child: SplashContainer(800, 800)),
              Positioned( top: mediaQuery.size.height * 0.150,
                left: mediaQuery.size.width * 0.70, child: SplashContainer(300, 300)),
              Positioned(
                bottom: 0,
                right: 220,
                child: SplashContainer(400, 380),
              ),
               Positioned(
               top: mediaQuery.size.height * 0.350,
                right: mediaQuery.size.width * 0.30,
                 child: const SplashImage()),
              Positioned(
                top: mediaQuery.size.height * 0.190,
                right: mediaQuery.size.width * 0.15,
                child: const CircleAvatar(
                  backgroundColor: Colors.blue,
                  backgroundImage: AssetImage("assets/images/smiling-baby-biting-right-index-finger-1648374.png"),
                ),
              ),
              Positioned(
                bottom: mediaQuery.size.height * 0.1,
                left: mediaQuery.size.width * 0.30,
                child: const CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/child-christmas-baby-cute-37664.png"),
                ),
              ),
              Positioned(
                top: mediaQuery.size.height * 0.230,
                left: mediaQuery.size.width * 0.180,
                child: const CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 55,
                  backgroundImage: AssetImage("assets/images/baby-in-white-onesie-789786.png"),
                ),
              ),
               Positioned(   bottom: mediaQuery.size.height * 0.408,
                left: mediaQuery.size.width * 0.210, child: SplashTextWidget()),
            ],
          ),
        );
      },
    );
  }
}
