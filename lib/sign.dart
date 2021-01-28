import 'package:flutter/material.dart';
import 'package:flutter_examples/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sign extends StatefulWidget {
  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  final _emailC = TextEditingController();
  final _passwordC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Sign Up"),
        ),
        body: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(hintText: "Email"),
                controller: _emailC,
              ),
              TextField(
                decoration: InputDecoration(hintText: "Password"),
                controller: _passwordC,
              ),
              Builder(
                builder: (ctx) => RaisedButton(
                  child: Text("Sign Up"),
                  onPressed: () async {
                    SharedPreferences _pref =
                        await SharedPreferences.getInstance();
                    _pref.setString("e", _emailC.text);
                    _pref.setString("p", _passwordC.text);
                   // Navigator.of(ctx).pushReplacement(
                      //  MaterialPageRoute(builder: (ctx) => Home()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
