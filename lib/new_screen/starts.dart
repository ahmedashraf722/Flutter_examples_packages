import 'package:flutter/material.dart';
import 'package:flutter_examples/new_screen/total_screen.dart';

class MyAppA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //debugShowCheckedModeBanner: false,
      body: TotalScreen(),
      /* theme: ThemeData(
        fontFamily: 'Tajawal'
      ),*/
    );
  }
}
