import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:study_mate/enums/quiz_mode.dart';
import 'package:study_mate/models/quiz/request/quiz_submit_answer_request_model.dart';
import 'package:study_mate/models/quiz/request/quiz_submit_request_model.dart';
import 'package:study_mate/models/quiz/source/quiz_set_model.dart';
import 'package:study_mate/theme/app_colors.dart';
import 'package:study_mate/utils/logger_util.dart';
import 'package:study_mate/widgets/buttons/app_text_button.dart';
import 'package:study_mate/widgets/list_tiles/app_list_tile.dart';

class QuizPlayScreen extends StatefulWidget {
  final QuizSetModel quizSet;
  final QuizMode quizMode;

  const QuizPlayScreen({
    super.key,
    required this.quizSet,
    required this.quizMode,
  });

  @override
  State<QuizPlayScreen> createState() => _QuizPlayScreenState();
}

class _QuizPlayScreenState extends State<QuizPlayScreen> {
  final PageController _pageController = PageController();
  final StopWatchTimer _stopWatchTimer = StopWatchTimer(
    mode: StopWatchMode.countUp,
  );

  int currentIndex = 0;
  late final List<int?> selectedAnswers;

  @override
  void initState() {
    super.initState();
    selectedAnswers = List<int?>.filled(widget.quizSet.quizzes.length, null);
    _stopWatchTimer.onStartTimer();
  }

  @override
  void dispose() {
    _stopWatchTimer.dispose();
    _pageController.dispose();
    super.dispose();
  }

  void _submitQuiz() {
    _stopWatchTimer.onStopTimer();

    context.pushReplacement(
      '/quiz_result',
      extra: {
        'quizSet': widget.quizSet,
        'selectedAnswers': selectedAnswers,
        'solvingTime': _stopWatchTimer.rawTime.value,
      },
    );

    final request = QuizSubmitRequestModel(
      quizSetId: widget.quizSet.id,
      solvingTime: _stopWatchTimer.rawTime.value,
      answers: List.generate(
        widget.quizSet.quizzes.length,
        (index) => QuizSubmitAnswerRequestModel(
          quizItemId: widget.quizSet.quizzes[index].id,
          selectedAnswer: selectedAnswers[index],
        ),
      ),
    );

    LoggerUtil.d(request);
  }

  @override
  Widget build(BuildContext context) {
    final quizzes = widget.quizSet.quizzes;
    final isLastQuiz = currentIndex == quizzes.length - 1;

    return Scaffold(
      appBar: AppBar(title: Text(widget.quizSet.sourceTitle)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${currentIndex + 1} / ${quizzes.length}',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  AppTextButton(
                    bgColor: Colors.black87,
                    text: '제출하기',
                    textColor: Colors.white,
                    textWeight: FontWeight.w700,
                    onPressed: _submitQuiz,
                  ),
                  StreamBuilder<int>(
                    stream: _stopWatchTimer.rawTime,
                    initialData: 0,
                    builder: (context, snapshot) {
                      final value = snapshot.data ?? 0;
                      final displayTime = StopWatchTimer.getDisplayTime(
                        value,
                        hours: false,
                        milliSecond: false,
                      );

                      return Text(
                        displayTime,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemCount: quizzes.length,
                  itemBuilder: (context, index) {
                    final quiz = quizzes[index];
                    final selectedOptionIndex = selectedAnswers[index];

                    return SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(24),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(color: AppColors.divider),
                            ),
                            child: Text(
                              quiz.question,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            separatorBuilder: (_, _) =>
                                const SizedBox(height: 12),
                            itemCount: quiz.options.length,
                            itemBuilder: (context, optionIndex) {
                              final option = quiz.options[optionIndex];
                              final isSelected =
                                  selectedOptionIndex == optionIndex;

                              return AppListTile(
                                color: isSelected ? Colors.green : Colors.white,
                                leading: Text(
                                  '${optionIndex + 1}.',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                title: option,
                                titleTextStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                                onTap: () {
                                  setState(() {
                                    selectedAnswers[index] = optionIndex;
                                  });
                                },
                              );
                            },
                          ),
                          if (widget.quizMode == QuizMode.practice) ...[
                            const SizedBox(height: 12),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(24),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(color: AppColors.divider),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      children: [
                                        const TextSpan(text: '정답: '),
                                        TextSpan(
                                          text: '${quiz.answerIndex + 1}',
                                          style: const TextStyle(
                                            color: Colors.green,
                                          ),
                                        ),
                                        const TextSpan(text: '번'),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    quiz.explanation,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ],
                      ),
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
