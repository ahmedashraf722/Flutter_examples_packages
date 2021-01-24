import 'package:flutter/material.dart';
import 'package:flutter_examples/quiz_app/home_quiz.dart';
import 'package:intl/intl.dart';

class Clicked extends StatefulWidget {
  @override
  _ClickedState createState() => _ClickedState();
}

class _ClickedState extends State<Clicked> {
  DateTime _selectedDateTime = DateTime.now();

  void _dataPicker() {
    WidgetsFlutterBinding.ensureInitialized();
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015),
      lastDate: DateTime.now(),
    ).then((value) {
      if (value == _selectedDateTime) {
        return;
      }
      setState(() {
        _selectedDateTime = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Body Bottom",
          style: TextStyle(color: w),
        ),
      ),
      body: Center(
        child: RaisedButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          color: Theme.of(context).primaryColor,
          child: Text(
            "Date ${DateFormat.yMMMd().format(_selectedDateTime)}",
            style: TextStyle(
              color: w,
              fontSize: 25,
            ),
          ),
          onPressed: _dataPicker,
        ),
      ),
    );
  }
}
