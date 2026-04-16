import 'package:flutter/material.dart';
import 'package:study_mate/theme/app_colors.dart';
import 'package:study_mate/widgets/list_tiles/app_list_tile.dart';

class QuizResultSummaryCard extends StatelessWidget {
  final int score;
  final String correctCountText;
  final String displayTime;

  const QuizResultSummaryCard({
    super.key,
    required this.score,
    required this.correctCountText,
    required this.displayTime,
  });

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
            AppColors.primary.withValues(alpha: 0.9),
            AppColors.primary.withValues(alpha: 0.8),
          ],
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$score점',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 24),
          LinearProgressIndicator(
            value: score / 100,
            minHeight: 8,
            borderRadius: BorderRadius.circular(36),
            backgroundColor: Colors.grey.withValues(alpha: 0.8),
            color: Colors.white,
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: AppListTile(
                  color: Colors.white,
                  leading: const Icon(Icons.check_circle_outline_rounded),
                  title: '정답 수',
                  subtitle: correctCountText,
                  subtitleTextStyle: const TextStyle(
                    color: AppColors.primary,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: AppListTile(
                  color: Colors.white,
                  leading: const Icon(Icons.timer_outlined),
                  title: '걸린 시간',
                  subtitle: displayTime,
                  subtitleTextStyle: const TextStyle(
                    color: AppColors.primary,
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
