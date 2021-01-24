import 'package:flutter/material.dart';
import 'package:flutter_examples/quiz_app/home_quiz.dart';

class Result extends StatelessWidget {
  final Function q;
  final int resultScore;

  Result(this.q, this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 70) {
      resultText = "You are awesome !";
    } else if (resultScore >= 40) {
      resultText = "Pretty likable !";
    } else {
      resultText = "You are so bad !";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You Score is $resultScore",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: b,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: b,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: q,
            child: Text(
              "Restart The App Quiz",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
