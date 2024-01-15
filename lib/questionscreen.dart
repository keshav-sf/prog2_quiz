import 'package:flutter/material.dart';
import 'package:prog2_quiz/question_option.dart';
import 'package:prog2_quiz/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onAnswerSelected});
  final void Function(String answer) onAnswerSelected;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var questionindex = 0;

  void changeQuestion(String selectedAnswer) {
    widget.onAnswerSelected(selectedAnswer);
    setState(() {
      questionindex++;
    });
  }

  @override
  Widget build(context) {
    final currentquestions = questions[questionindex];
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              textAlign: TextAlign.center,
              currentquestions.text,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 30),
            ...currentquestions.shuffleList().map((answers) {
              return QuestionAnswer(
                  onTap: () {
                    changeQuestion(answers);
                  },
                  optiontext: answers);
            }),
            // QuestionAnswer(
            //     onTap: () {}, optiontext: currentquestions.answers[0]),
            // QuestionAnswer(
            //     onTap: () {}, optiontext: currentquestions.answers[1]),
            // QuestionAnswer(
            //     onTap: () {}, optiontext: currentquestions.answers[2]),
            // QuestionAnswer(
            //     onTap: () {}, optiontext: currentquestions.answers[3]),
          ],
        ),
      ),
    );
  }
}
