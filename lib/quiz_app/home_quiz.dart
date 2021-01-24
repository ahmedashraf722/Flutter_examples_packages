import 'package:flutter/material.dart';
import 'package:flutter_examples/quiz_app/quiz.dart';
import 'package:flutter_examples/quiz_app/result.dart';

class HomeQuiz extends StatefulWidget {
  @override
  _HomeQuizState createState() => _HomeQuizState();
}

Color w = Colors.white;
Color b = Colors.black87;

class _HomeQuizState extends State<HomeQuiz> {
  bool isSwitched = false;
  int _totalScore = 0;
  int _questionIndex = 0;
  int num0 = 0, num1 = 0, num2 = 0;

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      num0 = 0;
      num1 = 0;
      num2 = 0;
    });
  }

  void answerQuestion(score) {
    if (_questionIndex == 0)
      num0 = score;
    else if (_questionIndex == 1)
      num1 = score;
    else if (_questionIndex == 2) num2 = score;

    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    print(_totalScore);
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s your favourite Color ?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Blue', 'score': 10},
        {'text': 'Yellow', 'score': 40},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal ?',
      'answers': [
        {'text': 'Tiger', 'score': 10},
        {'text': 'Rabbit', 'score': 20},
        {'text': 'Lion', 'score': 50},
        {'text': 'Horse', 'score': 40},
      ],
    },
    {
      'questionText': 'What\'s your favourite City ?',
      'answers': [
        {'text': 'Alex', 'score': 5},
        {'text': 'Cairo', 'score': 50},
        {'text': 'US', 'score': 5},
        {'text': 'London', 'score': 40},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: w,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Quiz App",
          style: TextStyle(color: w),
        ),
        actions: [
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                if (isSwitched == true) {
                  w = Colors.white;
                  b = Colors.black87;
                }
                if (isSwitched == false) {
                  b = Colors.white;
                  w = Colors.black87;
                }
              });
              print(isSwitched);
            },
            activeColor: Colors.grey,
            inactiveThumbColor: Colors.pink,
            inactiveTrackColor: Colors.pinkAccent,
          ),
        ],
      ),
      body: _questionIndex < _question.length
          ? Column(
              children: [
                Quiz(_question, _questionIndex, answerQuestion),
              ],
            )
          : Result(resetQuiz, _totalScore),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back, color: w, size: 40),
        onPressed: () {
          if (_questionIndex == 1) _totalScore -= num0;
          if (_questionIndex == 2) _totalScore -= num1;
          if (_questionIndex == 3) _totalScore -= num2;
          setState(() {
            if (_questionIndex > 0) {
              _questionIndex--;
            }
            print("num0 = $num0");
            print("num1 = $num1");
            print("num2 = $num2");
            print("total $_totalScore");
          });
        },
      ),
    );
  }
}
