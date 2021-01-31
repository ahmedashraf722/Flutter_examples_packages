import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedB extends StatefulWidget {
  @override
  _AnimatedBState createState() => _AnimatedBState();
}

class _AnimatedBState extends State<AnimatedB> {
  bool visible = true;

  double _width = 50;
  double _height = 50;
  Color _color = Colors.cyan;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              curve: Curves.linear,
              duration: Duration(milliseconds: 700),
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
            ),
            AnimatedOpacity(
              opacity: visible == true ? 1 : 0,
              duration: Duration(milliseconds: 600),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Serga"),
                  Text("Serga"),
                  Text("Serga"),
                  Text("Serga"),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.flip),
        onPressed: () {
          setState(() {
            Random random = Random();
            visible = !visible;
            //   double opacity = visible == true ? 1 : 0.1;

            _width = random.nextInt(300).toDouble();
            _height = random.nextInt(300).toDouble();
            _color = Color.fromRGBO(
              random.nextInt(300),
              random.nextInt(300),
              random.nextInt(300),
              visible == true ? 0 : 1,
            );
            _borderRadius =
                BorderRadius.circular(random.nextInt(100).toDouble());
            print("$_width");
            print("$_height");
            print("$_color");
            print("$_borderRadius");
            /* _width = (_width == 50 ? 150 : 50);
            _height = (_height == 50 ? 150 : 50);
            _color = (_color == Colors.cyan ? Colors.lime : Colors.cyan);
            _borderRadius = (_borderRadius == BorderRadius.circular(10)
                ? BorderRadius.circular(30)
                : BorderRadius.circular(10));*/
          });
        },
      ),
    );
  }
}
