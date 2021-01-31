import 'package:flutter/material.dart';

class MyProviders with ChangeNotifier {
  int _counter = 0;

  int num = 10;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }
}
