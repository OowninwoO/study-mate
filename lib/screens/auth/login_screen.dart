import 'package:flutter/material.dart';
import 'package:study_mate/services/auth_service.dart';
import 'package:study_mate/utils/logger_util.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: FilledButton.icon(
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xFFF2F2F2),
              foregroundColor: const Color(0xFF1F1F1F),
              disabledBackgroundColor: const Color(0xFFF2F2F2),
              disabledForegroundColor: const Color(0xFF1F1F1F),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            icon: Image.asset(
              'assets/icons/google_logo.png',
              width: 20,
              height: 20,
            ),
            label: const Text('구글로 로그인'),
            onPressed: () async {
              try {
                await AuthService.signInWithGoogle();
              } catch (e) {
                LoggerUtil.e(e);
              }
            },
          ),
        ),
      ),
    );
  }
}
