import 'package:flutter/material.dart';

class QuizEmptyCard extends StatelessWidget {
  const QuizEmptyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36),
        image: const DecorationImage(
          image: AssetImage('assets/images/empty_quiz_illustration.png'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
        ),
      ),
      child: const Text(
        '문제가 아직 없어요 🥺\n슬슬 만들어볼까요?',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
