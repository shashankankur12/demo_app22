import 'package:demo_app/quiz.dart';
import 'package:demo_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _index = 0;
  int _totalSocre = 0;

  void _checkAnswer(int score) {
    _totalSocre += score;
    setState(() {
      _index = _index + 1;
    });
    print(score);
  }

  void _resetQuiz() {
    _totalSocre = 0;
    setState(() {
      _index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What is your favorite color ?',
        'answer': [
          {'text': 'Black', 'score': 0},
          {'text': 'Blue', 'score': 10},
          {'text': 'green', 'score': 0}
        ]
      },
      {
        'questionText': 'What is your favorite animal ?',
        'answer': [
          {'text': 'Cat', 'score': 0},
          {'text': 'Dog', 'score': 10},
          {'text': 'Cow', 'score': 0}
        ]
      },
      {
        'questionText': 'What is your subject?',
        'answer': [
          {'text': 'Hindi', 'score': 10},
          {'text': 'English', 'score': 0},
          {'text': 'Maths', 'score': 0}
        ]
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: _index < questions.length
            ? Quiz(
                questions: questions, index: _index, checkAnswer: _checkAnswer)
            : Result(
                _totalSocre,
                _resetQuiz
              ),
      ),
    );
  }
}
