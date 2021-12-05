import 'package:easyauto2/shared/themes/app_images.dart';
import 'package:flutter/material.dart';
import 'package:easyauto2/shared/themes/app_colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Container(
          child: Image.asset(AppImages.logobranco),
        ),
      ),
    );
  }
}
