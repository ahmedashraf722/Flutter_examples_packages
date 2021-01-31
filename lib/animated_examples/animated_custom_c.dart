import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedCustomC extends StatefulWidget {
  @override
  _AnimatedCustomCState createState() => _AnimatedCustomCState();
}

class _AnimatedCustomCState extends State<AnimatedCustomC>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 3,
      ),
      lowerBound: 0.5,
      upperBound: 3.0,
    )..repeat();
    _animation =
        Tween<Size>(begin: Size(200, 150), end: Size(200, 350)).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.linear,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Custom"),
      ),
      body: Center(
        child: Transform.scale(
          scale: 3,
          child: AnimatedBuilder(
            animation: _animationController,
            child: OutlineButton(
              child: Text("Clicked Me"),
              onPressed: () {},
              borderSide: BorderSide(width: 2),
            ),
            builder: (ctx, child) => Transform.rotate(
              angle: _animationController.value * 2 * pi,
              child: child,
            ),
          ),
        ),
      ),

      /*Transform.scale(
          scale: 3,
          child: OutlineButtonTransition(
            width: _animationController,
          ),
        ),*/
    );
  }
}

class OutlineButtonTransition extends AnimatedWidget {
  const OutlineButtonTransition({width}) : super(listenable: width);

  Animation<double> get width => listenable;

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text("Clicked Me"),
      onPressed: () {},
      borderSide: BorderSide(width: width.value),
      // BorderSide(width: width.value *3 ),
    );
  }
}
