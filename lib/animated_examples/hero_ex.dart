import 'package:flutter/material.dart';

class HeroH extends StatefulWidget {
  @override
  _HeroHState createState() => _HeroHState();
}

class _HeroHState extends State<HeroH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Ex Tag'),
      ),
      body: Center(
        child: Builder(
          builder: (ctx) => FlatButton(
            onPressed: () {
              Navigator.push(
                  ctx, MaterialPageRoute(builder: (ctx) => HeroHo()));
            },
            child: Hero(
              tag: "hi",
              child: FlutterLogo(
                size: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HeroHo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Hero Back Tag'),
        ),
        body: ListView(
          children: [
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 200,
              child: Center(
                child: Hero(
                  tag: 'hi',
                  child: FlutterLogo(
                    size: 250,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
