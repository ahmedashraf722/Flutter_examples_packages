import 'package:flutter/material.dart';

class CheckBoxList extends StatefulWidget {
  @override
  _CheckBoxListState createState() => _CheckBoxListState();
}

class _CheckBoxListState extends State<CheckBoxList> {
  bool js = false;
  bool cSharp = false;
  bool python = false;

  String get txt {
    String str = "You Selected : \n";
    if (js == true) str += "JavaScript\n";
    if (cSharp == true) str += "C#\n";
    if (python == true) str += "Python\n";
    else str = "none\n";
    return str;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Check Box",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Text("Selected All Programming Languages You Know: "),
          Row(
            children: [
              Checkbox(
                value: js,
                onChanged: (value) {
                  setState(() {
                    js = value;
                  });
                },
              ),
              Text("JS"),
            ],
          ),
          CheckboxListTile(
            value: cSharp,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
             setState(() {
               cSharp = value;
             });
            },
            title: Text("C#"),
          ),
          Row(
            children: [
              Checkbox(
                value: python,
                onChanged: (value) {
                  setState(() {
                    python = value;
                  });
                },
              ),
              Text("Python"),
            ],
          ),
          RaisedButton(
            child: Text("Apply!"),
            onPressed: () {
              setState(() {
                showDialog(
                    context: context,
                    builder: (v) {
                      return AlertDialog(
                        title: Text("Thanks You For Applying"),
                        content: Text(txt),
                      );
                    });
              });
            },
          ),
        ],
      ),
    );
  }
}
