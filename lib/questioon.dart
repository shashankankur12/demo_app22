import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  String questionString;

  Questions(this.questionString);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
      questionString,
      style: const TextStyle(
        fontSize: 22,
      ),
      textAlign: TextAlign.center,
    ));
  }
}
