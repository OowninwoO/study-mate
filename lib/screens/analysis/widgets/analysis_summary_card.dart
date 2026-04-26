import 'package:flutter/material.dart';
import 'package:study_mate/screens/analysis/widgets/analysis_pie_chart.dart';
import 'package:study_mate/theme/app_colors.dart';
import 'package:study_mate/widgets/list_tiles/app_list_tile.dart';

class AnalysisSummaryCard extends StatelessWidget {
  final int correctCount;
  final int wrongCount;
  final int unansweredCount;
  final int averageSolveSeconds;

  const AnalysisSummaryCard({
    super.key,
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
          AnalysisPieChart(
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
