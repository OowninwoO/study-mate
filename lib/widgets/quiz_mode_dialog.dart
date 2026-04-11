import 'package:flutter/material.dart';
import 'package:study_mate/enums/quiz_mode.dart';
import 'package:study_mate/theme/app_colors.dart';
import 'package:study_mate/widgets/buttons/app_text_button.dart';
import 'package:study_mate/widgets/list_tiles/app_list_tile.dart';

class QuizModeDialog extends StatelessWidget {
  const QuizModeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final modes = QuizMode.values;

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
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 12),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (_, _) => const SizedBox(height: 12),
              itemCount: modes.length,
              itemBuilder: (context, index) {
                final mode = modes[index];

                return AppListTile(
                  color: Colors.white,
                  title: mode.title,
                  subtitle: mode.subtitle,
                  onTap: () {
                    Navigator.pop(context, mode);
                  },
                );
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
