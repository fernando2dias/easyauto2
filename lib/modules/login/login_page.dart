import 'package:easyauto2/modules/login/login_controller.dart';
import 'package:easyauto2/shared/themes/app_colors.dart';
import 'package:easyauto2/shared/themes/app_images.dart';
import 'package:easyauto2/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final size =
        MediaQuery.of(context).size; // pegando a referencia do tamanho da tela.

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.35,
              color: AppColors.primary,
            ),
            Positioned(
                top: 30,
                left: 0,
                right: 0,
                child: Image.asset(AppImages.homem, width: 210, height: 312)),
            Positioned(
              bottom: size.height * 0.2,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logomini),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 70.0, right: 70.0),
                    child: Text(
                      "Uma viagem mais tranquila!",
                      style: TextStyles.titleHome,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SignInButton(
                      Buttons.Google,
                      text: "   Entrar com Google",
                      onPressed: () {
                        controller.googleSignIn(context);
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
