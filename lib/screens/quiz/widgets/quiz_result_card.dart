import 'package:flutter/material.dart';
import 'package:study_mate/widgets/list_tiles/app_list_tile.dart';

class QuizResultCard extends StatelessWidget {
  final int number;
  final String question;
  final List<String> options;
  final int answerIndex;
  final int? selectedAnswer;
  final bool isCorrect;

  const QuizResultCard({
    super.key,
    required this.number,
    required this.question,
    required this.options,
    required this.answerIndex,
    required this.selectedAnswer,
    required this.isCorrect,
  });

  Widget _resolveResultIcon() {
    if (selectedAnswer == null) {
      return const Icon(Icons.remove_rounded, color: Colors.grey);
    }

    if (isCorrect) {
      return const Icon(Icons.check_rounded, color: Colors.green);
    }

    return const Icon(Icons.close_rounded, color: Colors.red);
  }

  Color? _resolveTileColor(int index) {
    if (selectedAnswer == null) return null;

    final isSelected = index == selectedAnswer;
    final isAnswer = index == answerIndex;

    if (isCorrect) {
      return isSelected ? Colors.green : null;
    }

    if (isSelected) return Colors.red;
    if (isAnswer) return Colors.green;
    return null;
  }

  @override
  Widget build(BuildContext context) {
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
          _resolveResultIcon(),
        ],
      ),
      title: question,
      subtitleWidget: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (_, _) => const SizedBox(height: 6),
        itemCount: options.length,
        itemBuilder: (context, index) {
          return AppListTile(
            color: _resolveTileColor(index),
            title: options[index],
          );
        },
      ),
    );
  }
}
