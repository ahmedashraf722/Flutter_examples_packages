import 'package:flutter/material.dart';

class ListsWheelViewExamples extends StatefulWidget {
  @override
  _ListsWheelViewExamplesState createState() => _ListsWheelViewExamplesState();
}

class _ListsWheelViewExamplesState extends State<ListsWheelViewExamples> {
  static const nameList = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'July',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
    'This',
    'Comes',
    'To',
    'End',
  ];

  List<Color> colorList =
      List.generate(nameList.length, (index) => Colors.primaries[index]);

  @override
  Widget build(BuildContext context) {
    int i = 0;
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListWheelScrollView(
          itemExtent: 100,
          children: [
            ...nameList.map((name) {
              return Container(
                decoration: BoxDecoration(
                  color: colorList[i++],
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.red, width: 1),
                ),
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
