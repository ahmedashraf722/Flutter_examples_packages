import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Another extends StatefulWidget {
  @override
  _AnotherState createState() => _AnotherState();
}

class _AnotherState extends State<Another> {
  String _name = "";
  int _age = 0;
  double _height = 0.0;
  bool _developer = false;
  List<String> _skills = ["", ""];

  @override
  void dispose() {
    deleteData();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Another"),
      ),
      body: Center(
        child: DefaultTextStyle(
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Name: " + _name),
              Text("Age: $_age"),
              Text("Height: $_height"),
              Text("Developer: $_developer"),
              Text("Skill 1: " + _skills[0]),
              Text("Skill 2: " + _skills[1]),
              RaisedButton(
                child: Text("Get Data"),
                onPressed: () async {
                  await getData();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  deleteData() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();

    setState(() {
      _pref.remove('name');
      _pref.remove('age');
      _pref.remove('height');
      _pref.remove('developer');
      _pref.remove('skill');
    });
  }

  getData() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();

    setState(() {
      _name = _pref.getString('name') == null ? "" : _pref.getString('name');
      _age = _pref.getInt('age') == null ? 0 : _pref.getInt('age');
      _height =
          _pref.getDouble('height') == null ? 0.0 : _pref.getDouble('height');
      _developer = _pref.getBool('developer') == null
          ? false
          : _pref.getBool('developer');
      _skills = _pref.getStringList('skill') == null
          ? ["", ""]
          : _pref.getStringList('skill');
    });
  }
}
