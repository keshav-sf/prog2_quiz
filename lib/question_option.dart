import 'package:flutter/material.dart';

class QuestionAnswer extends StatelessWidget {
  const QuestionAnswer(
      {super.key, required this.onTap, required this.optiontext});

  final String optiontext;
  final void Function() onTap;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(),
      child: Text(optiontext),
    );
  }
}
