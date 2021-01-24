import 'package:flutter/material.dart';

class Ex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded"),
        elevation: 0,
      ),
      body: Container(
        child: Row(
          children: [
            Expanded(
              flex: 3,
                child: Image.asset("assets/images/i.jpg")),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(30),
                child: Text("1"),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.green,
                padding: const EdgeInsets.all(30),
                child: Text("2"),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.yellow,
                padding: const EdgeInsets.all(30),
                child: Text("3"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
