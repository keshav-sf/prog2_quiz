import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return Column(
      children: [
        const Text('The Question...'),
        const SizedBox(height: 30),
        ElevatedButton(onPressed: () {}, child: const Text("Hello world"))
      ],
    );
  }
}
