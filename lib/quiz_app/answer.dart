import 'package:flutter/material.dart';
import 'package:flutter_examples/quiz_app/home_quiz.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function x;

  Answer(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 25, color: w),
        ),
        onPressed: x,
      ),
    );
  }
}
