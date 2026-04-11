import 'package:flutter/material.dart';
import 'package:study_mate/theme/app_colors.dart';
import 'package:study_mate/widgets/list_tiles/app_list_tile.dart';

class QuizSummaryCard extends StatelessWidget {
  final int quizCount;
  final int totalQuestionCount;

  const QuizSummaryCard({
    super.key,
    required this.quizCount,
    required this.totalQuestionCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(36),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.secondary,
            AppColors.secondary.withValues(alpha: 0.8),
            AppColors.secondary.withValues(alpha: 0.6),
          ],
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '생성한 문제를\n한눈에 모아보기',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'AI 기반으로 생성한 문제를 모아보고,\n'
            '원할 때 바로 선택해서 풀 수 있어요.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: AppListTile(
                  color: Colors.white,
                  title: '보관된 문제',
                  subtitle: '$quizCount개',
                  subtitleTextStyle: const TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: AppListTile(
                  color: Colors.white,
                  title: '문제 수',
                  subtitle: '$totalQuestionCount문제',
                  subtitleTextStyle: const TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
