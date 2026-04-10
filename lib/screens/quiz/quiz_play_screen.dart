import 'package:flutter/material.dart';
import 'package:study_mate/enums/quiz_mode.dart';
import 'package:study_mate/models/quiz/quiz_set_model.dart';
import 'package:study_mate/theme/app_colors.dart';
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

  int currentIndex = 0;
  late final List<int?> selectedAnswers;

  @override
  void initState() {
    super.initState();
    selectedAnswers = List<int?>.filled(widget.quizSet.quizzes.length, null);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final quizzes = widget.quizSet.quizzes;

    return Scaffold(
      appBar: AppBar(title: Text(widget.quizSet.sourceTitle)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${currentIndex + 1} / ${quizzes.length}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
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
                                fontWeight: FontWeight.w800,
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
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                title: option,
                                titleTextStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
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
                                      fontWeight: FontWeight.w600,
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
