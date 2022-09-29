import 'package:flutter/material.dart';
import './questioon.dart';
import './answerQuestions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int index;
  final Function checkAnswer;

  Quiz(
      {required this.questions,
      required this.index,
      required this.checkAnswer});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[index]['questionText'] as String),
        ...(questions[index]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return AnswerQuestions(
              () => checkAnswer(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
