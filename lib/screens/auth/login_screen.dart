import 'package:flutter/material.dart';
import 'package:study_mate/services/auth_service.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: FilledButton(
            onPressed: () async {
              try {
                await AuthService.signInWithGoogle();
              } catch (e) {
                print(e);
              }
            },
            child: const Text('로그인'),
          ),
        ),
      ),
    );
  }
}
