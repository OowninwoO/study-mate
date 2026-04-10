import 'package:flutter/material.dart';
import 'package:study_mate/enums/quiz_mode.dart';
import 'package:study_mate/theme/app_colors.dart';
import 'package:study_mate/widgets/buttons/app_text_button.dart';
import 'package:study_mate/widgets/list_tiles/app_list_tile.dart';

class QuizModeDialog extends StatelessWidget {
  const QuizModeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.scaffoldBackground,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              '모드 선택',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 12),
            AppListTile(
              color: Colors.white,
              title: '연습 모드',
              subtitle: '정답과 해설을 보면서 풀기',
              onTap: () {
                Navigator.pop(context, QuizMode.practice);
              },
            ),
            const SizedBox(height: 12),
            AppListTile(
              color: Colors.white,
              title: '시험 모드',
              subtitle: '실전처럼 정답 없이 풀기',
              onTap: () {
                Navigator.pop(context, QuizMode.test);
              },
            ),
            const SizedBox(height: 12),
            AppTextButton(
              width: double.infinity,
              text: '닫기',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
