import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class AnimatedLikeButtonL extends StatefulWidget {
  @override
  _AnimatedLikeButtonLState createState() => _AnimatedLikeButtonLState();
}

class _AnimatedLikeButtonLState extends State<AnimatedLikeButtonL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Like Button"),
      ),
      body: Center(
        child: LikeButton(
        ),
      ),
    );
  }
}
