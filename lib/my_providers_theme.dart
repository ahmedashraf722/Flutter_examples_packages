import 'package:flutter/material.dart';

class MyProviderTheme with ChangeNotifier {
  ThemeMode tm = ThemeMode.light;

  bool slVal = false;

  void switchTheme(bool value) {
    slVal = value;
    if (slVal == false) {
      tm = ThemeMode.light;
      print("$tm");
    } else {
      tm = ThemeMode.dark;
      print("$tm");
    }
    notifyListeners();
  }
}
