import 'package:flutter/material.dart';

class StreamS extends StatefulWidget {
  @override
  _StreamSState createState() => _StreamSState();
}

class _StreamSState extends State<StreamS> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(Duration(milliseconds: 400), (e) => e),
      builder: (ctx, snapShot) {
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                (snapShot.hasData && snapShot.data < 10)
                    ? "${snapShot.data}"
                    : "Stream Demo !",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: Center(
              child: snapShot.connectionState == ConnectionState.waiting
                  ? CircularProgressIndicator()
                  : Text(
                      "Done ...",
                      style: TextStyle(
                        fontSize: 28,
                      ),
                    ),
            ),
          ),
        );
      },
    );
  }
}
