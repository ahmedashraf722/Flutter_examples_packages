import 'package:flutter/material.dart';
import 'package:flutter_examples/images_slider/images_slides.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreens extends StatefulWidget {
  @override
  _SplashScreensState createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(
        backgroundColor: Colors.pinkAccent,
        photoSize: 150,
        image: Image.asset("assets/images/s3.jpg"),
        seconds: 4,
        navigateAfterSeconds: ImagesSlides(),
        title: Text(
          "Splash Screen Tutorial",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        loaderColor: Colors.amber,
        loadingText: Text("Loading...."),
      ),
    );
  }
}
