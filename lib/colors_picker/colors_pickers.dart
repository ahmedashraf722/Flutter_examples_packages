import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorsPickersP extends StatefulWidget {
  @override
  _ColorsPickersPState createState() => _ColorsPickersPState();
}

class _ColorsPickersPState extends State<ColorsPickersP> {
  Color currentColors = Colors.teal;

  void changeColors(Color color) {
    setState(() {
      currentColors = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Color Picker'),
      ),
      body: Center(
        child: RaisedButton(
          color: currentColors,
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext ctx) {
                  return AlertDialog(
                    title: Text("Select a Color"),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SingleChildScrollView(
                          child: BlockPicker(
                            pickerColor: currentColors,
                            onColorChanged: changeColors,
                          ),
                        ),
                        RaisedButton(
                          child: Text("Close"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  );
                });
          },
          child: Text('Change My Colors'),
        ),
      ),
    );
  }
}
