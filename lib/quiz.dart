import 'package:flutter/material.dart';
import 'package:prog2_quiz/question_screen.dart';
import 'package:prog2_quiz/result_screen.dart';
import 'package:prog2_quiz/starting_screen.dart';
import 'package:prog2_quiz/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedanswer = [];

  var activeScreen = 'start_screen';

  void switchScreen() {
    setState(
      () {
        activeScreen = 'question_screen';
      },
    );
  }

  void addselectedanswer(String answer) {
    selectedanswer.add(answer);
    if (selectedanswer.length == questions.length) {
      setState(() {
        activeScreen = 'result_screen';
      });
    }
  }

  void onRestart() {
    setState(() {
      selectedanswer = [];
      activeScreen = 'question_screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenwidget = StartingScreen(switchScreen);

    if (activeScreen == "question_screen") {
      screenwidget = QuestionScreen(
        onAnswerSelected: addselectedanswer,
      );
    }
    if (activeScreen == "result_screen") {
      screenwidget = ResultScreen(
        choosenanswer: selectedanswer,
        onRestart: onRestart,
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          child: screenwidget,
        ),
      ),
    );
  }
}
