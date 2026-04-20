import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:study_mate/models/quiz/source/quiz_item_model.dart';
import 'package:study_mate/models/quiz/source/quiz_set_model.dart';
import 'package:study_mate/screens/quiz/widgets/quiz_result_card.dart';
import 'package:study_mate/screens/quiz/widgets/quiz_result_summary_card.dart';
import 'package:study_mate/widgets/buttons/app_text_button.dart';

class QuizResultScreen extends StatefulWidget {
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
  State<QuizResultScreen> createState() => _QuizResultScreenState();
}

class _QuizResultScreenState extends State<QuizResultScreen> {
  late final List<GlobalKey> _itemKeys;

  @override
  void initState() {
    super.initState();
    _itemKeys = List.generate(
      widget.quizSet.quizzes.length,
      (_) => GlobalKey(),
    );
  }

  Future<void> _scrollToQuestion(int index) async {
    final context = _itemKeys[index].currentContext;
    if (context == null) return;

    await Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final quizzes = widget.quizSet.quizzes;

    final results = List.generate(quizzes.length, (index) {
      final quiz = quizzes[index];
      final selectedAnswer = widget.selectedAnswers[index];

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
      widget.solvingTime,
      hours: false,
      milliSecond: false,
    );

    return Scaffold(
      appBar: AppBar(title: const Text('채점 결과')),
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
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: List.generate(results.length, (index) {
                  final result = results[index];

                  return AppTextButton(
                    bgColor: result.isCorrect ? Colors.green : Colors.red,
                    text: '${index + 1}',
                    textColor: Colors.white,
                    textSize: 16,
                    textWeight: FontWeight.w700,
                    onPressed: () => _scrollToQuestion(index),
                  );
                }),
              ),
              const SizedBox(height: 12),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (_, _) => const SizedBox(height: 12),
                itemCount: results.length,
                itemBuilder: (context, index) {
                  final result = results[index];

                  return QuizResultCard(
                    key: _itemKeys[index],
                    number: index + 1,
                    question: result.quiz.question,
                    options: result.quiz.options,
                    answerIndex: result.quiz.answerIndex,
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
