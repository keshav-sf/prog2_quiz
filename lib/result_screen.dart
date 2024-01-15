import "package:flutter/material.dart";
import "package:prog2_quiz/data/questions.dart";
import 'package:prog2_quiz/result_data.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.choosenanswer, required this.onRestart});
  final void Function() onRestart;
  final List<String> choosenanswer;

  List<Map<String, Object>> getData() {
    final List<Map<String, Object>> resultData = [];
    for (var i = 0; i < choosenanswer.length; i++) {
      resultData.add({
        "question_index": i,
        "question": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "user_answer": choosenanswer[i],
      });
    }
    return resultData;
  }

  @override
  Widget build(context) {
    final summaryData = getData();
    final numtotalQuestion = questions.length;
    final numCorrectAnswer = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $numCorrectAnswer out of $numtotalQuestion Questions Correctly!",
              style: const TextStyle(
                  color: Color.fromARGB(255, 225, 200, 252),
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 30),
            // const Text("List of answer and Question..."),
            ResultData(summaryData),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: onRestart,
              icon: const Icon(Icons.refresh),
              label: const Text("Restart Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
