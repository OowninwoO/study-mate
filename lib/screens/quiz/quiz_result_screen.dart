import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:study_mate/models/quiz/quiz_set_model.dart';

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

    int correctCount = 0;
    for (int i = 0; i < quizzes.length; i++) {
      if (selectedAnswers[i] == quizzes[i].answerIndex) {
        correctCount++;
      }
    }

    final score = ((correctCount * 100) / quizzes.length).round();

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
              Text('걸린 시간: $displayTime'),
              const SizedBox(height: 12),
              Expanded(
                child: ListView.separated(
                  itemCount: quizzes.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final isCorrect =
                        selectedAnswers[index] == quizzes[index].answerIndex;

                    return Text('${index + 1}. ${isCorrect ? 'O' : 'X'}');
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
