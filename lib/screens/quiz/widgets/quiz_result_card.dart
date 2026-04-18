import 'package:flutter/material.dart';
import 'package:study_mate/widgets/list_tiles/app_list_tile.dart';

class QuizResultCard extends StatelessWidget {
  final int number;
  final String question;
  final List<String> options;
  final int? selectedAnswer;
  final bool isCorrect;

  const QuizResultCard({
    super.key,
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
        ? Colors.grey
        : isCorrect
        ? Colors.green
        : Colors.red;

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
