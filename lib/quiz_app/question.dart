import 'package:flutter/material.dart';
import 'package:flutter_examples/quiz_app/home_quiz.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 25,color: b,fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
