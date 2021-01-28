import 'dart:math';

import 'package:flutter/material.dart';

class SliderTransformEx extends StatefulWidget {
  @override
  _SliderTransformExState createState() => _SliderTransformExState();
}

class _SliderTransformExState extends State<SliderTransformEx> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Slider Transform Demo"),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              //transform: Matrix4.rotationX(_value),
              // transform: Matrix4.rotationY(_value),
              // transform: Matrix4.rotationZ(_value),
              //transform: Matrix4.rotationZ(340 * (pi / 180)),
              transform: Matrix4.rotationZ(-20 * (pi / 180))
                ..translate(
                 0.0,
                  _value,
                  _value,
                ),

              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.deepOrange.shade900,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    color: Colors.blue,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Text(
                "My Shop ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
            /* Transform(
              // offset: Offset(_value,_value),
              //offset: Offset(-_value, -_value),
             //transform: Matrix4.skewX(0.5),
              //transform: Matrix4.skewY(0.5),
              transform: Matrix4.skew(0.5,0.9),

              child: Container(
                color: Colors.blue,
                width: 200,
                height: 200,
              ),
            ),*/
            /*Transform.scale(
              scale: _value,
              child: Container(
                color: Colors.blue,
                width: 200,
                height: 200,
              ),
            ),*/
            /*Transform.rotate(
              //  angle: pi/4,
              //angle: _value * (pi / 180),

              child: Container(
                color: Colors.blue,
                width: 200,
                height: 200,
              ),
            ),*/
            //SizedBox(height: 10),
            /* Text(
              "Value : ${(_value).round()} ",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),*/
            ,
            SizedBox(height: 10),
            Slider(
              value: _value,
              onChanged: (double val) {
                setState(() {
                  _value = val;
                });
              },
              min: 0,
              max: 180,
              // max: 2 * pi,
              //divisions: 100,
              label: "value",
              activeColor: Colors.red[700],
              inactiveColor: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
