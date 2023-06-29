import 'package:flutter/material.dart';
import 'apps/features/view/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toddddler',
debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(223, 239, 247, 1),
          primarySwatch: Colors.deepPurple,
          ),
      home:SplashPage()
    );
  }
}

