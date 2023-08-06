import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(126, 7, 255, 255),
          ),
          const SizedBox(height: 80),
          const Text(
            'LEARN FLUTTER',
            style: TextStyle(
              color: Color.fromARGB(255, 11, 192, 237),
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 25),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(
              Icons.arrow_circle_right,
            ),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
