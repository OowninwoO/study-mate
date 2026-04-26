import 'package:flutter/material.dart';
import 'package:study_mate/screens/analysis/widgets/analysis_ratio_bar.dart';
import 'package:study_mate/theme/app_colors.dart';
import 'package:study_mate/widgets/buttons/app_text_button.dart';

class AnalysisCategoryCard extends StatelessWidget {
  final String name;
  final int setCount;
  final int questionCount;
  final int correctCount;
  final int wrongCount;
  final int unansweredCount;
  final int averageSolveSeconds;

  const AnalysisCategoryCard({
    super.key,
    required this.name,
    required this.setCount,
    required this.questionCount,
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
        children: [
          AppTextButton(
            width: double.infinity,
            bgColor: Colors.black12,
            text: name,
            textColor: Colors.black,
            textSize: 16,
            textWeight: FontWeight.w700,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$setCount세트 · $questionCount문제',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              AppTextButton(
                bgColor: Colors.black12,
                text: '평균 $averageSolveSeconds초',
                textColor: Colors.black,
                textWeight: FontWeight.w700,
              ),
            ],
          ),
          const SizedBox(height: 12),
          AnalysisRatioBar(
            height: 12,
            correctCount: correctCount,
            wrongCount: wrongCount,
            unansweredCount: unansweredCount,
          ),
        ],
      ),
    );
  }
}
