import 'package:flutter/material.dart';

class InteractiveViewers extends StatefulWidget {
  @override
  _InteractiveViewersState createState() => _InteractiveViewersState();
}

class _InteractiveViewersState extends State<InteractiveViewers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 300,
          child: InteractiveViewer(
            constrained: false,
            boundaryMargin: EdgeInsets.all(45),
            child: Image.asset(
              'assets/images/s3.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
