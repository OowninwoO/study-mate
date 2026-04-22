import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:study_mate/enums/quiz_mode.dart';
import 'package:study_mate/providers/quiz/quiz_generating_provider.dart';
import 'package:study_mate/providers/quiz/quiz_set_list_provider.dart';
import 'package:study_mate/screens/home/widgets/quiz_empty_card.dart';
import 'package:study_mate/screens/home/widgets/quiz_summary_card.dart';
import 'package:study_mate/theme/app_colors.dart';
import 'package:study_mate/utils/date_time_util.dart';
import 'package:study_mate/widgets/buttons/app_icon_button.dart';
import 'package:study_mate/widgets/buttons/app_text_button.dart';
import 'package:study_mate/widgets/list_tiles/app_list_tile.dart';
import 'package:study_mate/widgets/quiz_generating_banner.dart';
import 'package:study_mate/widgets/quiz_mode_dialog.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isGenerating = ref.watch(quizGeneratingProvider);

    final quizzes = ref.watch(quizSetListProvider);
    final totalQuestionCount = quizzes.fold(
      0,
      (sum, quiz) => sum + quiz.quizzes.length,
    );

    return SafeArea(
      child: Column(
        children: [
          if (isGenerating) const QuizGeneratingBanner(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QuizSummaryCard(
                    quizCount: quizzes.length,
                    totalQuestionCount: totalQuestionCount,
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    '문제 보관함',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 12),
                  if (quizzes.isEmpty) ...[
                    const QuizEmptyCard(),
                  ] else ...[
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
                          subtitle:
                              '${quiz.quizzes.length}문제 · ${DateTimeUtil.formatDateTime(quiz.createdAt)}',
                          trailing: AppTextButton(
                            bgColor: Colors.black,
                            text: '풀기',
                            textColor: Colors.white,
                            textWeight: FontWeight.w700,
                          ),
                          onTap: () async {
                            final quizMode = await showDialog<QuizMode>(
                              context: context,
                              builder: (_) => const QuizModeDialog(),
                            );
                            if (quizMode == null) return;

                            context.push(
                              '/quiz_play',
                              extra: {'quizSet': quiz, 'quizMode': quizMode},
                            );
                          },
                        );
                      },
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
