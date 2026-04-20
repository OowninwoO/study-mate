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

  String _resolveScoreMessage() {
    if (score >= 90) return '정말 잘했어요! 거의 완벽해요';
    if (score >= 80) return '좋아요! 조금만 더 하면 돼요';
    if (score >= 70) return '괜찮아요! 복습하면 더 좋아질 거예요';
    if (score >= 60) return '조금 아쉬워요. 다시 도전해봐요';
    return '처음은 원래 어려워요. 한 번 더 풀어봐요';
  }

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
          const SizedBox(height: 8),
          Text(
            _resolveScoreMessage(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
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
