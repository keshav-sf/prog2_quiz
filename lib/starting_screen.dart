import "package:flutter/material.dart";

class StartingScreen extends StatelessWidget {
  const StartingScreen(this.startQuiz, {super.key}); //arguments
  final void Function() startQuiz; //function declaration

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
          ),
          const SizedBox(
            height: 55,
          ),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz(); //function called
            },
            icon: const Icon(Icons.arrow_right_alt_sharp),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text(
              "Start Quiz",
            ),
          ),
        ],
      ),
    );
  }
}
