import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: Colors.pinkAccent,
      ),
      child: Center(
        child: Icon(Icons.add,color: Colors.white,size: 30,),
      ),
    );
  }
}
