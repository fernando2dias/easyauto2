import 'package:easyauto2/modules/home/home_page.dart';
import 'package:easyauto2/modules/login/login_page.dart';
import 'package:easyauto2/modules/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:easyauto2/shared/themes/app_colors.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EasyAuto',
      theme: ThemeData(primaryColor: AppColors.primary),
      home: SplashPage(),
    );
  }
}
