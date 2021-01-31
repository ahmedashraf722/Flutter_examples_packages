import 'package:flutter/material.dart';

class FadeImagesI extends StatefulWidget {
  @override
  _FadeImagesIState createState() => _FadeImagesIState();
}

class _FadeImagesIState extends State<FadeImagesI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fade Image"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: FadeInImage(
            placeholder: AssetImage('assets/images/s2.jpg'),
            image: NetworkImage(
              'https://images.unsplash.com/photo-1547398123-bb965a6834ea?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=340&q=80',
            ),
          ),
        ),
      ),
    );
  }
}
