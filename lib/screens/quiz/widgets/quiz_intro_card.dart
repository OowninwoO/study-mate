import 'package:flutter/material.dart';
import 'package:study_mate/theme/app_colors.dart';
import 'package:study_mate/widgets/buttons/app_icon_text_button.dart';
import 'package:study_mate/widgets/buttons/app_text_button.dart';

class QuizIntroCard extends StatelessWidget {
  const QuizIntroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primary,
            AppColors.primary.withValues(alpha: 0.8),
            AppColors.primary.withValues(alpha: 0.6),
          ],
        ),
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppIconTextButton(
            icon: Icons.auto_awesome_rounded,
            iconColor: AppColors.primary,
            text: 'AI Quiz',
            textSize: 16,
            textWeight: FontWeight.w700,
          ),
          SizedBox(height: 12),
          Text(
            'PDF로 바로\n'
            '퀴즈 만들기',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 12),
          Text(
            '강의자료, 요약본, 교재 PDF를 업로드하면\n'
            '핵심 내용을 바탕으로 문제를 생성해드려요.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 12),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppTextButton(
                bgColor: Colors.black87,
                text: 'PDF',
                textColor: Colors.white,
                textWeight: FontWeight.w600,
              ),
              SizedBox(width: 8),
              AppTextButton(
                bgColor: Colors.black87,
                text: '강의자료',
                textColor: Colors.white,
                textWeight: FontWeight.w600,
              ),
              SizedBox(width: 8),
              AppTextButton(
                bgColor: Colors.black87,
                text: '빠른 생성',
                textColor: Colors.white,
                textWeight: FontWeight.w600,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
