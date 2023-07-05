import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/authentications/login_page.dart';
import 'package:flutter_application_1/apps/features/utils/settingsPage/Edit_profile_widget.dart.dart';
import 'package:flutter_application_1/apps/features/utils/settingsPage/add_child_widget.dart';
import 'package:flutter_application_1/apps/features/view/ProfilePage/notification_page.dart';
import 'package:flutter_application_1/apps/features/view/ProfilePage/profile_page.dart';
import 'package:flutter_application_1/apps/features/view/ProfilePage/settings_page.dart';
import 'package:flutter_application_1/apps/features/view/accountPages/account_page.dart';
import 'package:flutter_application_1/apps/features/view/accountPages/number_page.dart';
import 'package:flutter_application_1/apps/features/view/accountPages/verification_page.dart';
import 'package:flutter_application_1/apps/features/view/accountPages/welcome_page.dart';
import 'package:flutter_application_1/apps/features/view/homepages/blog_page_info.dart';
import 'package:flutter_application_1/apps/features/view/newFiles/Micheal.dart';
import 'package:flutter_application_1/apps/features/view/newFiles/following.dart';
import 'package:flutter_application_1/apps/features/view/newFiles/for_you_page.dart';
import 'package:flutter_application_1/apps/features/view/newFiles/mainscreen.dart';
import 'package:flutter_application_1/apps/features/view/newFiles/nearbuy.dart';
import 'package:flutter_application_1/apps/features/view/recordingPages/blur_image_page.dart';
import 'package:flutter_application_1/apps/features/view/recordingPages/cam_access_page.dart';
import 'package:flutter_application_1/apps/features/view/recordingPages/post_page.dart';
import 'package:flutter_application_1/apps/features/view/settings_page/Bio_page.dart';
import 'package:flutter_application_1/apps/features/view/settings_page/set_gender.dart';
import 'package:flutter_application_1/apps/features/view/settings_page/set_name.dart';
import 'package:flutter_application_1/apps/features/view/settings_page/set_user_name.dart';
import 'apps/features/authentications/mainscreen.dart';
import 'apps/features/authentications/sign_up.dart';
import 'apps/features/view/homepages/home_page.dart';
import 'apps/features/view/newFiles/adding_newchild.dart';
import 'apps/features/view/splash_screen.dart';
import 'myrouter/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toddddler',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      initialRoute: MyRoutes.splashPage,
      routes: {
        MyRoutes.splashPage: (context) => SplashPage(),
        MyRoutes.mainscreen: (context) => MainScreenPage(),
        MyRoutes.signUpScreen: (context) => SignUpPage(),
        MyRoutes.loginScreen: (context) => LoginPage(),
        MyRoutes.homeScreen: (context) => HomePage(),
        MyRoutes.cameAccessPage: (context) => CameAccessPage(),
        MyRoutes.mainInfoPage: (context) => MainInfoPage(),
        MyRoutes.blogdetailspage: (context) => BlogDetailsPage(),
        MyRoutes.notificationpage: (context) => NotificationPage(),
        MyRoutes.settingsPage: (context) => SettingsPage(),
        MyRoutes.postPage: (context) => PostPage(),
        MyRoutes.myNumberPage: (context) => MyNumberPage(),
        MyRoutes.verificationpage: (context) => VerificationPage(),
        MyRoutes.profilePage: (context) => ProfilePage(),
        MyRoutes.welcomePage: (context) => WelcomePage(),
        MyRoutes.bioPage: (context) => BioPage(),
        MyRoutes.setGenderPage: (context) => SetGenderPage(),
        MyRoutes.setNamePage: (context) => SetNamePage(),
        MyRoutes.setUserNamePage: (context) => SetUserNamePage(),
        MyRoutes.editProfileWidget: (context) => EditProfileWidget(),
        MyRoutes.blurPage: (context) => BlurPage(),
         MyRoutes.addChildWiget: (context) => AddChildWiget(),
         MyRoutes.nearbuy: (context) => Nearbuy(),
           MyRoutes.forYouPage: (context) => ForYouPage(),
             MyRoutes.findPage: (context) => FindPage(),
              MyRoutes.followingPage: (context) => FollowingPage(),
           MyRoutes.michealPage: (context) => MichealPage(),
      MyRoutes.addChildPage: (context) => AddChildPage(),

      },
    );
  }
}
