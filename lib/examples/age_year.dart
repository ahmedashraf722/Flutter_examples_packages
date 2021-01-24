import 'package:flutter/material.dart';
import 'file:///C:/Users/Ahmed/AndroidStudioProjects/flutter_examples/lib/examples/age_calculator.dart';

class Age extends StatefulWidget {
  @override
  _AgeState createState() => _AgeState();
}

class _AgeState extends State<Age> {
  int str = 0;
  var myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        color: Colors.pinkAccent,
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(
              margin: EdgeInsets.all(8),
              child: TextField(
                controller: myController,
                decoration: InputDecoration(
                  labelText: "Age Year",
                  labelStyle: TextStyle(color: Colors.black87, fontSize: 25),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87, width: 2),
                  ),
                  enabled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87, width: 2),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "your age $str",
              style: TextStyle(color: Colors.black87, fontSize: 30),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.all(8),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    AgeCalculator(p: int.parse(myController.text));
                    str = AgeCalculator.age;
                  });
                },
                child: Text(
                  "Get Age",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
