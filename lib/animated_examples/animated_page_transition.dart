import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AnimatedPageTransitionT extends StatefulWidget {
  @override
  _AnimatedPageTransitionState createState() => _AnimatedPageTransitionState();
}

class _AnimatedPageTransitionState extends State<AnimatedPageTransitionT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Transition'),
      ),
      body: Center(
        child: Builder(
          builder: (ctx) => FlatButton(
            onPressed: () {
              Navigator.push(
                ctx,
                PageTransition(
                  child: PageT(),
                  //  type: PageTransitionType.bottomToTop,
                  // type: PageTransitionType.leftToRight,
                  // type: PageTransitionType.fade,
                  type: PageTransitionType.rotate,
                  alignment: Alignment.bottomRight,
                ),
              );
            },
            child: FlutterLogo(
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}

class PageT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Back Page'),
        ),
        body: ListView(
          children: [
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 200,
              child: Center(
                child: FlutterLogo(
                  size: 250,
                ),
              ),
            ),
          ],
        ));
  }
}
