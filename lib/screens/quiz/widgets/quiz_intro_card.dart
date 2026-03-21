import 'package:flutter/material.dart';
import 'package:study_mate/widgets/buttons/app_icon_button.dart';
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
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF6C63FF), Color(0xFF8E7BFF), Color(0xFFA58BFF)],
        ),
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppIconButton(
                icon: Icons.picture_as_pdf_rounded,
                iconColor: Color(0xFF6C63FF),
              ),
              SizedBox(width: 4),
              AppIconTextButton(
                icon: Icons.auto_awesome_rounded,
                iconColor: Color(0xFF6C63FF),
                text: 'AI Quiz',
              ),
            ],
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
                text: 'PDF only',
                textColor: Colors.white,
              ),
              SizedBox(width: 8),
              AppTextButton(
                bgColor: Colors.black87,
                text: '빠른 문제 생성',
                textColor: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
