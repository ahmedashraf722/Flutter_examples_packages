import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedSliderS extends StatefulWidget {
  @override
  _AnimatedSliderSState createState() => _AnimatedSliderSState();
}

class _AnimatedSliderSState extends State<AnimatedSliderS> {
  double _angle = 0;
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: _angle),
              duration: Duration(milliseconds: 900),
              child: Container(
                height: 200,
                width: 300,
                color: Colors.green,
              ),
              builder: (ctx, double angle, child) => Transform.rotate(
                angle: angle,
                child: child,
              ),
            ),
            Text(
              "${(_value * (180 / pi)).round()}",
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            Slider(
              value: _value,
              onChanged: (val) {
                setState(() {
                  _value = val;
                  _angle = val;
                });
              },
              min: 0,
              max: pi * 2,
              divisions: 4,
            ),
          ],
        ),
      ),
    );
  }
}
