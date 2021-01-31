import 'package:flutter/material.dart';

class AnimatedImplicitS extends StatefulWidget {
  @override
  _AnimatedRState createState() => _AnimatedRState();
}

class _AnimatedRState extends State<AnimatedImplicitS>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;
  final DecorationTween _decorationTween = DecorationTween(
      begin: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.zero,
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Colors.blue,
              offset: Offset(0, 0),
              blurRadius: 4,
              spreadRadius: 0.5,
            ),
          ]),
      end: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.zero,
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.red,
              offset: Offset(0, 0),
              blurRadius: 4,
              spreadRadius: 0.5,
            ),
          ]));

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 900),
      // lowerBound: 0.5,
    )..repeat(reverse: true);
    _animation = TextStyleTween(
      begin: TextStyle(
        color: Colors.red,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
      end: TextStyle(
        color: Colors.lime,
        fontSize: 80,
        fontWeight: FontWeight.bold,
      ),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.linear,
    ));
    super.initState();
  }

  /*
   _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
      lowerBound: 0.5,
    )..repeat(reverse: true);
    _animation = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(1, 1),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.linear,
    ));

  _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
      lowerBound: 0.5,
    )..repeat(reverse: true);
    _animation = Tween<AlignmentGeometry>(
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.linear,
    ));
    */
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Implicit"),
      ),
      backgroundColor: Colors.black54,
      body: Center(
        child: DefaultTextStyleTransition(
          style: _animation,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Serga"),
          ),
        ), /* SizeTransition(
          sizeFactor: _animation,
         // axis: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterLogo(
              size: 100,
            ),
          ),
        ),*/ /*ScaleTransition(
          scale: _animation,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterLogo(
              size: 100,
            ),
          ),
        ),*/
      ),
    );
  }
}
