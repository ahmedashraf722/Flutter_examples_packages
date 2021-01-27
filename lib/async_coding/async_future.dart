import 'package:flutter/material.dart';

class FutureA extends StatefulWidget {
  @override
  _FutureAState createState() => _FutureAState();
}

class _FutureAState extends State<FutureA> {
  int info(int a) {
    return a;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 2), () => info(5)),
        builder: (ctx, snapShot) {
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text(
                  snapShot.hasData ? "${snapShot.data}" : "Future Demo !",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              body: Center(
                child: snapShot.connectionState == ConnectionState.waiting
                    ? CircularProgressIndicator()
                    : Text("Done ..."),
              ),
            ),
          );
        });
  }
}
