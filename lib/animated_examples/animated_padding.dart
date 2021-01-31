import 'package:flutter/material.dart';

class AnimatedPad extends StatefulWidget {
  @override
  _AnimatedPadState createState() => _AnimatedPadState();
}

class _AnimatedPadState extends State<AnimatedPad> {
  double padValue = 0;
  double dx = 0;
  double dy = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.yellow[300],
          child: AnimatedAlign(
            duration: Duration(milliseconds: 600),
            alignment: FractionalOffset(dx, dy),
            // alignment: Alignment(1, 1),
            child: FlutterLogo(
              size: 50,
            ),
          ),
        ), /*AnimatedPadding(
          duration: Duration(milliseconds:400),
          padding: EdgeInsets.all(padValue),
          child: Container(
            color: Colors.blue,
          ),
        ),*/
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.flip),
        onPressed: () {
          setState(() {
            dx = (dx == 0 ? 1 : 0);
            dy = (dy == 0 ? 1 : 0);
            // padValue = padValue == 0 ? 25 : 0;
          });
        },
      ),
    );
  }
}
