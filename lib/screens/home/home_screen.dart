import 'package:flutter/material.dart';
import 'package:study_mate/theme/app_colors.dart';
import 'package:study_mate/widgets/buttons/app_icon_button.dart';
import 'package:study_mate/widgets/buttons/app_text_button.dart';
import 'package:study_mate/widgets/list_tiles/app_list_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final quizzes = [
      _QuizItem(title: '자료구조 3주차.pdf', questionCount: 10, createdAt: '방금 생성됨'),
      _QuizItem(title: '운영체제 정리본.pdf', questionCount: 10, createdAt: '오늘 생성됨'),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FC),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(36),
                  border: Border.all(
                    color: AppColors.primary.withValues(alpha: 0.12),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.04),
                      blurRadius: 24,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.auto_awesome_rounded,
                            size: 18,
                            color: AppColors.primary,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Quiz Hub',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      '생성한 퀴즈를\n한눈에 모아보기',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      '문제 생성 화면에서 만든 퀴즈를 홈에서 모아보고,\n원할 때 바로 선택해서 풀 수 있어요.',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: _SummaryCard(
                            label: '보관된 퀴즈',
                            value: '${quizzes.length}개',
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: _SummaryCard(label: '문제 수', value: '20문제'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                '최근 생성한 퀴즈',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      quizzes.first.title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${quizzes.first.questionCount}문제 · ${quizzes.first.createdAt}',
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 16),
                    AppTextButton(
                      bgColor: Colors.black,
                      text: '퀴즈 풀러 가기',
                      textColor: Colors.white,
                      textWeight: FontWeight.w700,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                '퀴즈 보관함',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 12),
              ...quizzes.map(
                (quiz) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: AppListTile(
                    color: Colors.white,
                    leading: AppIconButton(
                      bgColor: AppColors.primary.withValues(alpha: 0.1),
                      icon: Icons.description_rounded,
                      iconColor: AppColors.primary,
                      iconSize: 28,
                    ),
                    title: quiz.title,
                    subtitle: '${quiz.questionCount}문제 · ${quiz.createdAt}',
                    trailing: AppTextButton(
                      bgColor: Colors.black,
                      text: '풀기',
                      textColor: Colors.white,
                      textWeight: FontWeight.w700,
                      onPressed: () {},
                    ),
                    onTap: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SummaryCard extends StatelessWidget {
  const _SummaryCard({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F8FC),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            value,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

class _QuizItem {
  final String title;
  final int questionCount;
  final String createdAt;

  const _QuizItem({
    required this.title,
    required this.questionCount,
    required this.createdAt,
  });
}
