import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:study_mate/providers/user/user_me_provider.dart';
import 'package:study_mate/utils/logger_util.dart';
import 'package:study_mate/utils/toast_util.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              context.loaderOverlay.show();

              try {
                await ref.read(userMeProvider.notifier).signInWithGoogle();
                ToastUtil.success('로그인에 성공했습니다.');
              } catch (e) {
                LoggerUtil.e(e);
                ToastUtil.error('로그인에 실패했습니다.');
              } finally {
                context.loaderOverlay.hide();
              }
            },
          ),
        ),
      ),
    );
  }
}
