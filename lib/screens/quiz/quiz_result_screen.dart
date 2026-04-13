import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:study_mate/models/quiz/quiz_set_answer_model.dart';
import 'package:study_mate/models/quiz/quiz_set_model.dart';

class QuizResultScreen extends StatelessWidget {
  final QuizSetModel quizSet;
  final QuizSetAnswerModel answerModel;

  const QuizResultScreen({
    super.key,
    required this.quizSet,
    required this.answerModel,
  });

  @override
  Widget build(BuildContext context) {
    final quizzes = quizSet.quizzes;

    final correctCount = quizzes.where((quiz) {
      final answer = answerModel.answers.firstWhere(
        (e) => e.quizItemId == quiz.id,
      );

      return answer.selectedAnswer == quiz.answerIndex;
    }).length;

    final score = ((correctCount * 100) / quizzes.length).round();

    final displayTime = StopWatchTimer.getDisplayTime(
      answerModel.solvingTime,
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
                    final quiz = quizzes[index];
                    final answer = answerModel.answers.firstWhere(
                      (e) => e.quizItemId == quiz.id,
                    );

                    final resultText = answer.selectedAnswer == null
                        ? '-'
                        : answer.selectedAnswer == quiz.answerIndex
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
