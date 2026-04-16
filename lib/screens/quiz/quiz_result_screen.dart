import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:study_mate/models/quiz/source/quiz_item_model.dart';
import 'package:study_mate/models/quiz/source/quiz_set_model.dart';
import 'package:study_mate/screens/quiz/widgets/quiz_result_summary_card.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
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
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                '정답 여부와 선택 결과를 한눈에 확인해보세요.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF6B7280),
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.separated(
                  itemCount: results.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final result = results[index];

                    return _QuizResultCard(
                      number: index + 1,
                      question: result.quiz.question,
                      selectedAnswer: result.selectedAnswer,
                      correctAnswer: result.quiz.answerIndex,
                      isCorrect: result.isCorrect,
                    );
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

class _QuizResultCard extends StatelessWidget {
  final int number;
  final String question;
  final int? selectedAnswer;
  final int correctAnswer;
  final bool isCorrect;

  const _QuizResultCard({
    required this.number,
    required this.question,
    required this.selectedAnswer,
    required this.correctAnswer,
    required this.isCorrect,
  });

  @override
  Widget build(BuildContext context) {
    final isUnanswered = selectedAnswer == null;

    final statusText = isUnanswered
        ? '미응답'
        : isCorrect
        ? '정답'
        : '오답';

    final statusBackgroundColor = isUnanswered
        ? const Color(0xFFF3F4F6)
        : isCorrect
        ? const Color(0xFFE8F8EE)
        : const Color(0xFFFFECEC);

    final statusForegroundColor = isUnanswered
        ? const Color(0xFF6B7280)
        : isCorrect
        ? const Color(0xFF167C3B)
        : const Color(0xFFD14343);

    final statusIcon = isUnanswered
        ? Icons.remove_rounded
        : isCorrect
        ? Icons.check_rounded
        : Icons.close_rounded;

    final selectedText = selectedAnswer == null
        ? '미응답'
        : '${selectedAnswer! + 1}번';
    final correctText = '${correctAnswer + 1}번';

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: const Color(0xFFE5E7EB)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0F111827),
            blurRadius: 16,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 38,
                height: 38,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F6FD),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text(
                  '$number',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF3B5BDB),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  '$number번 문제',
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF111827),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: statusBackgroundColor,
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(statusIcon, size: 16, color: statusForegroundColor),
                    const SizedBox(width: 6),
                    Text(
                      statusText,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: statusForegroundColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Text(
            question,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 15,
              height: 1.5,
              fontWeight: FontWeight.w400,
              color: Color(0xFF1F2937),
            ),
          ),
          const SizedBox(height: 14),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              _AnswerInfoBox(
                label: '내 답',
                value: selectedText,
                foregroundColor: isUnanswered
                    ? const Color(0xFF6B7280)
                    : isCorrect
                    ? const Color(0xFF167C3B)
                    : const Color(0xFFD14343),
                backgroundColor: isUnanswered
                    ? const Color(0xFFF3F4F6)
                    : isCorrect
                    ? const Color(0xFFE8F8EE)
                    : const Color(0xFFFFECEC),
              ),
              _AnswerInfoBox(
                label: '정답',
                value: correctText,
                foregroundColor: const Color(0xFF3B5BDB),
                backgroundColor: const Color(0xFFF3F6FD),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AnswerInfoBox extends StatelessWidget {
  final String label;
  final String value;
  final Color foregroundColor;
  final Color backgroundColor;

  const _AnswerInfoBox({
    required this.label,
    required this.value,
    required this.foregroundColor,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '$label ',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w300,
              color: foregroundColor,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: foregroundColor,
            ),
          ),
        ],
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
