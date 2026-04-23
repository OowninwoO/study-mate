import 'package:flutter/material.dart';

class RatioBar extends StatelessWidget {
  final double height;
  final int correctCount;
  final int wrongCount;
  final int unansweredCount;

  const RatioBar({
    super.key,
    required this.height,
    required this.correctCount,
    required this.wrongCount,
    required this.unansweredCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(36)),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: correctCount,
            child: Container(color: Colors.green),
          ),
          Expanded(
            flex: wrongCount,
            child: Container(color: Colors.red),
          ),
          Expanded(
            flex: unansweredCount,
            child: Container(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
