import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          image: DecorationImage(
              image: NetworkImage(
                  'https://image.freepik.com/free-photo/cheerful-curly-business-girl-wearing-glasses_176420-206.jpg'),
              fit: BoxFit.cover)),
    );
  }
}
