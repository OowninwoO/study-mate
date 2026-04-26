import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:study_mate/screens/analysis/widgets/analysis_category_card.dart';
import 'package:study_mate/screens/analysis/widgets/analysis_summary_card.dart';

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

    final totalSetCount = categories.map((item) => item.setCount).sum;
    final totalQuestionCount = categories.map((item) => item.questionCount).sum;
    final totalCorrect = categories.map((item) => item.correctCount).sum;
    final totalWrong = categories.map((item) => item.wrongCount).sum;
    final totalUnanswered = categories.map((item) => item.unansweredCount).sum;
    final totalSolved = totalCorrect + totalWrong + totalUnanswered;
    final totalSolveSeconds = categories
        .map((item) => item.averageSolveSeconds * item.totalCount)
        .sum;
    final weightedAverageSeconds = (totalSolveSeconds / totalSolved).round();

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
            const SizedBox(height: 4),
            const Text(
              '카테고리별 정답 비율과 평균 풀이시간을 한눈에 볼 수 있어요.',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 12),
            AnalysisSummaryCard(
              setCount: totalSetCount,
              questionCount: totalQuestionCount,
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

                return AnalysisCategoryCard(
                  name: item.name,
                  setCount: item.setCount,
                  questionCount: item.questionCount,
                  correctCount: item.correctCount,
                  wrongCount: item.wrongCount,
                  unansweredCount: item.unansweredCount,
                  averageSolveSeconds: item.averageSolveSeconds,
                );
              },
            ),
          ],
        ),
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
