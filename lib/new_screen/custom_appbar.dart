
import 'package:flutter/material.dart';
import 'package:flutter_examples/new_screen/balance.dart';
import 'package:flutter_examples/new_screen/name.dart';
class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/ 2 - 20,
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            )
          ),
        ),
        CustomName(),
        BalanceCard(),
      ],
      
    );
  }
}