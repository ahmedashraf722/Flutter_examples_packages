import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class RadioLists extends StatefulWidget {
  @override
  _RadioListsState createState() => _RadioListsState();
}

class _RadioListsState extends State<RadioLists> {
  int _radioValue = 0;
  String result;
  Color resultColor;

  void buildBottom(context) {
    showMaterialModalBottomSheet(
      elevation: 0,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => SingleChildScrollView(
        controller: ModalScrollController.of(context),
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          height: MediaQuery.of(context).size.height / 2,
          child: Column(
            children: [
              Text('Modal'),
              Text('Modal'),
              Text('Modal'),
              Text('Modal'),
              Text('Modal'),
            ],
          )
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Lists Tile"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        color: _radioValue == 0 ? Colors.brown : Colors.green,
        child: Column(
          children: [
            buildRadioListTile(0, 'Brown', 'Change Colors'),
            buildRadioListTile(1, 'green', 'Change Colors'),
            RaisedButton(
              onPressed: () {
                setState(() {
                  buildBottom(context);
                });
              },
              color: Colors.pink,
              child: Text("clicked"),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRadioListTile(val, txt, subTxt) {
    return RadioListTile(
      title: Text(
        txt,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        subTxt,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),
      value: val,
      controlAffinity: ListTileControlAffinity.trailing,
      groupValue: _radioValue,
      onChanged: (value) {
        setState(() {
          _radioValue = value;
        });
      },
    );
  }
}
