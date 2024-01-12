import 'package:flutter/material.dart';
import 'package:prog2_quiz/questionscreen.dart';
import 'package:prog2_quiz/starting_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget?
      activeScreen; //used to switch between widget & ? means that activeScreen widget can be null

  // [This was not used because the declaration & initialization is done exceuting at same time.]
  // Widget activeScreen = StartingScreen(switchScreen);

  @override
  //initState is used to initialize activeScreen widget
  void initState() {
    activeScreen = StartingScreen(switchScreen);
    super.initState();
  }

  //Function which will be used to switch between widget on button click
  void switchScreen() {
    setState(
      () {
        activeScreen = const QuestionScreen();
      },
    );
  }

  @override
  Widget build(context) {
    return MaterialApp(
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
          child: activeScreen,
        ),
      ),
    );
  }
}
