import 'package:easyauto2/modules/home/home_page.dart';
import 'package:easyauto2/modules/splash/splash_page.dart';
import 'package:easyauto2/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'modules/login/login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EasyAuto',
      theme: ThemeData(primaryColor: AppColors.primary),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
