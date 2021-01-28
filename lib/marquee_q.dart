import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class MarqueeQ extends StatefulWidget {
  @override
  _MarqueeQState createState() => _MarqueeQState();
}

class _MarqueeQState extends State<MarqueeQ> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Marquee Demo"),
        ),
        body: ListView(
          children: [
            SizedBox(height: 10),
            SizedBox(
              height: 80,
              child: Card(
                color: Colors.teal,
                child: Marquee(
                  text: "Simple Marquee",
                  blankSpace: 100,
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 80,
              child: Card(
                color: Colors.teal,
                child: Marquee(
                  text: "Simple Marquee",
                  blankSpace: 50,
                  scrollAxis: Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
