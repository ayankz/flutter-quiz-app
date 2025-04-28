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
          Opacity(
            opacity: 0.4,
            child: Image.asset(
              'assets/images/logo.png',
              width: 200,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Learn the flutter',
            style: TextStyle(
                color: Color.fromARGB(255, 238, 201, 245), fontSize: 24),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Color.fromARGB(255, 238, 201, 245),
            ),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                  color: Color.fromARGB(255, 238, 201, 245), fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
