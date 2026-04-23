import 'package:flutter/material.dart';
import 'package:study_mate/screens/analysis/widgets/ratio_bar.dart';
import 'package:study_mate/theme/app_colors.dart';
import 'package:study_mate/widgets/list_tiles/app_list_tile.dart';

class AnalysisScreen extends StatelessWidget {
  const AnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const categories = [
      _AnalysisCategoryData(
        name: '생물',
        setCount: 3,
        questionCount: 80,
        correctCount: 48,
        wrongCount: 20,
        unansweredCount: 12,
        averageSolveSeconds: 43,
      ),
      _AnalysisCategoryData(
        name: '화학',
        setCount: 2,
        questionCount: 54,
        correctCount: 30,
        wrongCount: 18,
        unansweredCount: 6,
        averageSolveSeconds: 57,
      ),
      _AnalysisCategoryData(
        name: '영어',
        setCount: 4,
        questionCount: 60,
        correctCount: 42,
        wrongCount: 10,
        unansweredCount: 8,
        averageSolveSeconds: 35,
      ),
    ];

    final totalCorrect = categories.fold<int>(
      0,
      (sum, item) => sum + item.correctCount,
    );
    final totalWrong = categories.fold<int>(
      0,
      (sum, item) => sum + item.wrongCount,
    );
    final totalUnanswered = categories.fold<int>(
      0,
      (sum, item) => sum + item.unansweredCount,
    );
    final totalSolved = totalCorrect + totalWrong + totalUnanswered;
    final weightedAverageSeconds =
        categories.fold<int>(
          0,
          (sum, item) => sum + (item.averageSolveSeconds * item.totalCount),
        ) ~/
        totalSolved;

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '분석',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '카테고리별 정답 비율과 평균 풀이시간을 한눈에 볼 수 있어요.',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 12),
            _SummaryCard(
              correctCount: totalCorrect,
              wrongCount: totalWrong,
              unansweredCount: totalUnanswered,
              averageSolveSeconds: weightedAverageSeconds,
            ),
            const SizedBox(height: 24),
            const Text(
              '카테고리별 분석',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 12),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (_, _) => const SizedBox(height: 12),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final item = categories[index];

                return _CategoryAnalysisTile(data: item);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _SummaryCard extends StatelessWidget {
  final int correctCount;
  final int wrongCount;
  final int unansweredCount;
  final int averageSolveSeconds;

  const _SummaryCard({
    required this.correctCount,
    required this.wrongCount,
    required this.unansweredCount,
    required this.averageSolveSeconds,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36),
        border: Border.all(color: AppColors.divider),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '전체 요약',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          RatioBar(
            height: 16,
            correctCount: correctCount,
            wrongCount: wrongCount,
            unansweredCount: unansweredCount,
          ),
          const SizedBox(height: 12),
          AppListTile(
            color: AppColors.primary,
            leading: const Icon(Icons.timer_outlined, color: Colors.white),
            title: '전체 평균 풀이시간',
            titleTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
            trailing: Text(
              '$averageSolveSeconds초',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CategoryAnalysisTile extends StatelessWidget {
  final _AnalysisCategoryData data;

  const _CategoryAnalysisTile({required this.data});

  static const Color _cardColor = Colors.white;
  static const Color _dividerColor = Color(0xFFE7EBF3);
  static const Color _textPrimary = Color(0xFF1F2937);
  static const Color _textSecondary = Color(0xFF6B7280);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _cardColor,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: _dividerColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1F3FF),
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: Text(
                        data.name,
                        style: const TextStyle(
                          color: _textPrimary,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${data.setCount}세트 · ${data.questionCount}문제',
                      style: const TextStyle(
                        color: _textSecondary,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.timer_outlined,
                    size: 18,
                    color: _textSecondary,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    '평균 ${data.averageSolveSeconds}초',
                    style: const TextStyle(
                      color: _textPrimary,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 14),
          RatioBar(
            height: 12,
            correctCount: data.correctCount,
            wrongCount: data.wrongCount,
            unansweredCount: data.unansweredCount,
          ),
        ],
      ),
    );
  }
}

class _AnalysisCategoryData {
  final String name;
  final int setCount;
  final int questionCount;
  final int correctCount;
  final int wrongCount;
  final int unansweredCount;
  final int averageSolveSeconds;

  const _AnalysisCategoryData({
    required this.name,
    required this.setCount,
    required this.questionCount,
    required this.correctCount,
    required this.wrongCount,
    required this.unansweredCount,
    required this.averageSolveSeconds,
  });

  int get totalCount => correctCount + wrongCount + unansweredCount;
}
