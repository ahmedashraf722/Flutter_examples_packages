import 'package:flutter/material.dart';
import 'package:flutter_examples/state_providers/my_provider.dart';
import 'package:provider/provider.dart';

class Counter1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 150,
        height: 150,
        child: Center(
          child: Text(
            Provider.of<MyProvider>(context).counter.toString(),
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
