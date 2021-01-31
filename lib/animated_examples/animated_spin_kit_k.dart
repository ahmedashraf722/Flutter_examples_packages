import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AnimatedSpinKitKk extends StatefulWidget {
  @override
  _AnimatedSpinKitKState createState() => _AnimatedSpinKitKState();
}

class _AnimatedSpinKitKState extends State<AnimatedSpinKitKk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spin Kit"),
      ),
      body: Center(
        child: SpinKitWave(
          color: Colors.purpleAccent,
          // shape: BoxShape.rectangle,
          size: 50,
          //type: SpinKitWaveType.center,
          type: SpinKitWaveType.end,
        ),
      ),
    );
  }
}
/*CircularProgressIndicator(
          strokeWidth: 8,
          backgroundColor: Colors.purpleAccent,
        ),*/
