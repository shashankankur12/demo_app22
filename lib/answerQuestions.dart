import 'package:flutter/material.dart';

class AnswerQuestions extends StatelessWidget {
  final VoidCallback inputHendler;
  final String answer;

  AnswerQuestions(this.inputHendler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                onPrimary: Colors.white,
                elevation: 8.5),
            child: Text(answer),
            onPressed: inputHendler));
  }
}
