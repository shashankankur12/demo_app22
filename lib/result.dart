import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;
  final VoidCallback resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultString {
    String finalString;

    if (totalScore == 30) {
      finalString = 'Well Done! you have cleared quiz with A+ greads. ';
    } else if (totalScore == 20) {
      finalString = 'Great! you have cleared quiz with B+ greads. ';
    } else if (totalScore == 10) {
      finalString = 'you have cleared quiz with C+ greads. ';
    } else {
      finalString = 'Sorry you didn\'t clear the quiz ';
    }
    return finalString;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          resultString,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: resetQuiz,
          child: Text('Retry'),
          style: TextButton.styleFrom(
            primary: Colors.lightBlue
          ),
        )
      ],
    ));
  }
}
