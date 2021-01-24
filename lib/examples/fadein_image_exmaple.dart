import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
      ),
      body: Stack(
        children: [
          Center(
            child: CircularProgressIndicator(),
          ),
          Center(
            child: ClipOval(
              clipBehavior: Clip.hardEdge,
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: 'https://picsum.photos/250?image=9',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
