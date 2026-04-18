import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:study_mate/models/quiz/source/quiz_item_model.dart';
import 'package:study_mate/models/quiz/source/quiz_set_model.dart';
import 'package:study_mate/screens/quiz/widgets/quiz_result_summary_card.dart';
import 'package:study_mate/theme/app_colors.dart';
import 'package:study_mate/widgets/list_tiles/app_list_tile.dart';

class QuizResultScreen extends StatelessWidget {
  final QuizSetModel quizSet;
  final List<int?> selectedAnswers;
  final int solvingTime;

  const QuizResultScreen({
    super.key,
    required this.quizSet,
    required this.selectedAnswers,
    required this.solvingTime,
  });

  @override
  Widget build(BuildContext context) {
    final quizzes = quizSet.quizzes;

    final results = List.generate(quizzes.length, (index) {
      final quiz = quizzes[index];
      final selectedAnswer = selectedAnswers[index];

      return _QuizResultItemData(
        quiz: quiz,
        selectedAnswer: selectedAnswer,
        isCorrect: selectedAnswer == quiz.answerIndex,
      );
    });

    final correctCount = results.where((result) => result.isCorrect).length;
    final score = ((correctCount * 100) / quizzes.length).round();
    final correctCountText = '$correctCount / ${quizzes.length}';
    final displayTime = StopWatchTimer.getDisplayTime(
      solvingTime,
      hours: false,
      milliSecond: false,
    );

    return Scaffold(
      appBar: AppBar(title: Text('채점 결과')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QuizResultSummaryCard(
                score: score,
                correctCountText: correctCountText,
                displayTime: displayTime,
              ),
              const SizedBox(height: 24),
              const Text(
                '문제별 결과',
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
                itemCount: results.length,
                itemBuilder: (context, index) {
                  final result = results[index];

                  return _QuizResultCard(
                    number: index + 1,
                    question: result.quiz.question,
                    options: result.quiz.options,
                    selectedAnswer: result.selectedAnswer,
                    isCorrect: result.isCorrect,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _QuizResultCard extends StatelessWidget {
  final int number;
  final String question;
  final List<String> options;
  final int? selectedAnswer;
  final bool isCorrect;

  const _QuizResultCard({
    required this.number,
    required this.question,
    required this.options,
    required this.selectedAnswer,
    required this.isCorrect,
  });

  @override
  Widget build(BuildContext context) {
    final isUnanswered = selectedAnswer == null;

    final resultIcon = isUnanswered
        ? Icons.remove_rounded
        : isCorrect
        ? Icons.check_rounded
        : Icons.close_rounded;

    final resultIconColor = isUnanswered
        ? AppColors.unanswered
        : isCorrect
        ? AppColors.correct
        : AppColors.wrong;

    return AppListTile(
      color: Colors.white,
      leading: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '$number',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 6),
          Icon(resultIcon, color: resultIconColor),
        ],
      ),
      title: question,
      subtitleWidget: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (_, _) => const SizedBox(height: 6),
        itemCount: options.length,
        itemBuilder: (context, index) {
          return AppListTile(title: options[index]);
        },
      ),
    );
  }
}

class _QuizResultItemData {
  final QuizItemModel quiz;
  final int? selectedAnswer;
  final bool isCorrect;

  const _QuizResultItemData({
    required this.quiz,
    required this.selectedAnswer,
    required this.isCorrect,
  });
}
