import 'package:flutter/material.dart';

class RadioButtonT extends StatefulWidget {
  @override
  _RadioButtonTState createState() => _RadioButtonTState();
}

class _RadioButtonTState extends State<RadioButtonT> {
  int _radioValue = 0;
  String result;
  Color resultColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button"),
        centerTitle: true,
      ),
      body: buildColumn(context),
    );
  }

  Widget buildColumn(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Text(
          "  Guess The Answer : 2 + 2 ?",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
        ),
        SizedBox(height: 4),
        buildRow(3),
        buildRow(4),
        buildRow(5),
      ],
    );
  }

  myDialog() {
    showDialog(
        context: context,
        builder: (a) {
          return AlertDialog(
            content: Container(
              height: 100,
              child: Column(
                children: [
                  Text(
                    "$result",
                    style: TextStyle(
                      color: resultColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text("Answer is: 4"),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget buildRow(int value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Radio(
          value: value,
          groupValue: _radioValue,
          onChanged: (value) {
            setState(() {
              _radioValue = value;
              result = value == 4 ? "Correct Answer" : "Wrong Answer";
              resultColor = value == 4 ? Colors.green : Colors.red;
              myDialog();
            });
          },
        ),
        Text(
          " $value",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
