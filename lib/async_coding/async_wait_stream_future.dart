import 'package:flutter/material.dart';

class AsyncAwait extends StatefulWidget {
  @override
  _AsyncAwaitState createState() => _AsyncAwaitState();
}

class _AsyncAwaitState extends State<AsyncAwait> {
  int i = 0;

  Stream<int> getData() {
    Stream<int> myStream =
        Stream.periodic(Duration(milliseconds: 500), (a) => a);
    return myStream;

    /*  Stream myStream = Stream.periodic(Duration(seconds: 1), (a) => (a));
    await for (final v in myStream) {
      if (v > 10) break;
      print(v);
    }*/
    /* Stream myStream = Stream.periodic(Duration(seconds: 1), (a) => (a));
    await for (final v in myStream) {
      print(v);
    }*/

    /*  try {
      int a = await Future.delayed(Duration(seconds: 2), () => throw Exception("Invalid"));
      print(a);
    } catch (e) {
      print("Error = $e");
    }
*/
    /*try {
      int a = await Future.delayed(Duration(seconds: 4), () => 1);
      print(a);
    } catch (e) {
      print("Error = $e");
    }*/
    /*  int a = await Future.delayed(Duration(seconds: 4), () => 1);
    print(a);*/
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Async Demo ! = $i ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("Clicked Me ..."),
            onPressed: () async {
              await for (final item in getData()) {
                setState(() {
                  i = (item < 10 ? item : 0);
                });
              }
            },
          ),
        ),
      ),
    );
  }
}
