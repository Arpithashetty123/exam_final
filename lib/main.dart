import 'package:flutter/material.dart';

import 'apps/features/authentications/mainscreen.dart';
import 'apps/features/view/account_page.dart';
import 'apps/features/view/custom_navigation.dart';
import 'apps/features/view/number_page.dart';
import 'apps/features/view/set_gender.dart';
import 'apps/features/view/settings_page.dart';
import 'apps/features/view/spalsh_screen.dart';
import 'apps/features/view/verification_page.dart';
import 'apps/features/view/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          ),
      home:SetGenderPage() 

    );
  }
}

