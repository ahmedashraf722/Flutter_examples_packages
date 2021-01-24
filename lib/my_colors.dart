import 'package:flutter/material.dart';

class MyColors extends InheritedWidget {
  final Color color;
  final Widget child;

  MyColors({
    @required this.color,
    @required this.child,
  });

  @override
  bool updateShouldNotify(MyColors oldWidget) {
    return color != oldWidget.color;
  }

  static MyColors of(context) =>
      context.inheritFromWidgetOfExactType(MyColors);
}
