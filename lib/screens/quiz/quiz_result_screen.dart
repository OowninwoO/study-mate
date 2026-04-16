import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:study_mate/models/quiz/source/quiz_item_model.dart';
import 'package:study_mate/models/quiz/source/quiz_set_model.dart';

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

    final correctCount = results
        .where((isCorrect) => isCorrect.isCorrect)
        .length;
    final score = ((correctCount * 100) / quizzes.length).round();
    final correctCountText = '$correctCount / ${quizzes.length}';
    final displayTime = StopWatchTimer.getDisplayTime(
      solvingTime,
      hours: false,
      milliSecond: false,
    );

    return Scaffold(
      appBar: AppBar(title: const Text('채점 결과')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('점수: $score점'),
              const SizedBox(height: 12),
              Text('정답 수: $correctCountText'),
              const SizedBox(height: 12),
              Text('걸린 시간: $displayTime'),
              const SizedBox(height: 12),
              Expanded(
                child: ListView.separated(
                  itemCount: results.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final result = results[index];

                    final resultText = result.selectedAnswer == null
                        ? '-'
                        : result.isCorrect
                        ? 'O'
                        : 'X';

                    return Text('${index + 1}. $resultText');
                  },
                ),
              ),
            ],
          ),
        ),
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
