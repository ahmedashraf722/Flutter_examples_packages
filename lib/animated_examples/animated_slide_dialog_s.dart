import 'package:flutter/material.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart';

class AnimatedSlideDialogS extends StatefulWidget {
  @override
  _AnimatedSlideDialogSState createState() => _AnimatedSlideDialogSState();
}

class _AnimatedSlideDialogSState extends State<AnimatedSlideDialogS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Slide Popup Dialog"),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              setState(() {
                showSlideDialog(
                  context: context,
                  pillColor: Colors.purpleAccent,
                  backgroundColor: Colors.red,
                  barrierColor: Colors.black45,
                  // barrierDismissible: false,
                  child: Text("Hi Ahmed"),
                );
              });
            },
          ),
        ],
      ),
      body: Center(
          child: RaisedButton(
        child: Text("Open Dialog"),
        onPressed: () {
          setState(() {
            showSlideDialog(
              context: context,
              pillColor: Colors.purpleAccent,
              backgroundColor: Colors.red,
              barrierColor: Colors.black45,
              // barrierDismissible: false,
              child: Text("Hello"),
            );
          });
        },
      )),
    );
  }
}
