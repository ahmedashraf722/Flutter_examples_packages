import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedS extends StatefulWidget {
  @override
  _AnimatedSState createState() => _AnimatedSState();
}

class _AnimatedSState extends State<AnimatedS> {
  double _size = 30;
  Color _color = Colors.lime;
  FontWeight _fontWeight = FontWeight.bold;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Center(
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 800),
          style: TextStyle(
            color: _color,
            fontSize: _size,
            fontWeight: _fontWeight,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("My Text"),
              Text("My Text"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.flip),
        onPressed: () {
          Random random = Random();
          setState(() {
            _size = random.nextInt(60).toDouble();
            _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256),
                random.nextInt(256), 1);
            // _fontWeight = FontWeight.normal;
          });
        },
      ),
    );
  }
}
