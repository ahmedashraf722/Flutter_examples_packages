import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedStack extends StatefulWidget {
  @override
  _AnimatedStackState createState() => _AnimatedStackState();
}

class _AnimatedStackState extends State<AnimatedStack> {
  bool visible = true;
  Color _color = Colors.cyan;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.blueGrey[200],
          ),
          Center(
            child: Text(
              "Serga",
              style: TextStyle(fontSize: 25),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 700),
            bottom: visible == true ? 250 : 350,
            right: 100,
            child: Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            visible = !visible;
            Random random = Random();
            _color = Color.fromRGBO(
              random.nextInt(300),
              random.nextInt(300),
              random.nextInt(300),
              1,
            );
            _borderRadius =
                BorderRadius.circular(random.nextInt(100).toDouble());
          });
        },
      ),
    );
  }
}
