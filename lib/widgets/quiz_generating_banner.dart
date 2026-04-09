import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/material.dart';
import 'package:study_mate/theme/app_colors.dart';

class QuizGeneratingBanner extends StatelessWidget {
  const QuizGeneratingBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimateGradient(
      primaryColors: const [AppColors.primary, Colors.indigoAccent],
      secondaryColors: const [AppColors.secondary, Colors.blueAccent],
      duration: const Duration(seconds: 1),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16),
        child: const Text(
          '문제를 생성중입니다.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
