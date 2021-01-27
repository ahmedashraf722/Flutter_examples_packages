import 'package:flutter/material.dart';
import 'dart:async';

class TimerT extends StatefulWidget {
  @override
  _TimerTState createState() => _TimerTState();
}

class _TimerTState extends State<TimerT> {
  Timer _timer;

  int _start = 0;

  startTimer(int i) {
    if (_timer != null) {
      _timer.cancel();
    }
    setState(() {
      _start = i;
    });

    _timer = Timer.periodic(Duration(milliseconds: 500), (timer) {
      setState(() {
        _start < 1 ? _timer.cancel() : _start -= 1;
      });
    });
  }

  pauseTimer() {
    if (_timer != null) {
      _timer.cancel();
    }
  }

  continueTimer() {
    startTimer(_start);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Timer Count Down"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$_start",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 70,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton.icon(
                    onPressed: () => startTimer(100),
                    icon: Icon(Icons.replay),
                    label: Text("Restart"),
                  ),
                  FlatButton.icon(
                    onPressed: pauseTimer,
                    icon: Icon(Icons.pause),
                    label: Text("Pause"),
                  ),
                  FlatButton.icon(
                    onPressed: continueTimer,
                    icon: Icon(Icons.play_arrow),
                    label: Text("Continue"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
