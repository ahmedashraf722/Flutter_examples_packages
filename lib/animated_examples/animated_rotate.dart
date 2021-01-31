import 'package:flutter/material.dart';

class AnimatedRImplicit extends StatefulWidget {
  @override
  _AnimatedRState createState() => _AnimatedRState();
}

class _AnimatedRState extends State<AnimatedRImplicit>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.linear,
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
        title: Text("Animated Implicit"),
      ),
      backgroundColor: Colors.black54,
      body: Center(
        child: RotationTransition(
          turns: _animation,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterLogo(
              size: 100,
            ),
          ),
        ),
      ),
    );
  }
}
