import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_mate/providers/quiz/quiz_set_list_provider.dart';
import 'package:study_mate/theme/app_colors.dart';
import 'package:study_mate/widgets/buttons/app_icon_button.dart';
import 'package:study_mate/widgets/buttons/app_text_button.dart';
import 'package:study_mate/widgets/list_tiles/app_list_tile.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizzes = ref.watch(quizSetListProvider);

    final totalQuestionCount = quizzes.fold(
      0,
      (sum, quiz) => sum + quiz.quizzes.length,
    );

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
                    '생성한 퀴즈를\n한눈에 모아보기',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    '문제 생성 화면에서 만든 퀴즈를 홈에서 모아보고,\n'
                    '원할 때 바로 선택해서 풀 수 있어요.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: AppListTile(
                          color: Colors.white,
                          title: '보관된 퀴즈',
                          subtitle: '${quizzes.length}개',
                          subtitleTextStyle: const TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
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
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
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
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (_, _) => const SizedBox(height: 12),
              itemCount: quizzes.length,
              itemBuilder: (context, index) {
                final quiz = quizzes[index];

                return AppListTile(
                  color: Colors.white,
                  leading: AppIconButton(
                    bgColor: AppColors.secondary.withValues(alpha: 0.1),
                    icon: Icons.description_rounded,
                    iconColor: AppColors.secondary,
                    iconSize: 30,
                  ),
                  title: quiz.sourceTitle,
                  subtitle: '${quiz.quizzes.length}문제 · ${quiz.createdAt}',
                  trailing: AppTextButton(
                    bgColor: Colors.black,
                    text: '풀기',
                    textColor: Colors.white,
                    textWeight: FontWeight.w700,
                  ),
                  onTap: () {},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
