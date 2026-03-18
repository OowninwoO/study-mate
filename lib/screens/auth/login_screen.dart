import 'package:flutter/material.dart';
import 'package:study_mate/services/auth_service.dart';
import 'package:study_mate/widgets/buttons/app_icon_text_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: AppIconTextButton(
            bgColor: const Color(0xFFF2F2F2),
            fgColor: const Color(0xFF1F1F1F),
            icon: Image.asset(
              'assets/icons/google_logo.png',
              width: 20,
              height: 20,
            ),
            text: '구글로 로그인',
            onPressed: () async {
              try {
                await AuthService.signInWithGoogle();
              } catch (e) {
                print(e);
              }
            },
          ),
        ),
      ),
    );
  }
}
