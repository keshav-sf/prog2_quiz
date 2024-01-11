import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 60, 5, 124),
                Color.fromARGB(255, 195, 143, 250),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
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
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_right_alt_sharp),
                  style:
                      OutlinedButton.styleFrom(foregroundColor: Colors.white),
                  label: const Text(
                    "Start Quiz",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
