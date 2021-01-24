//import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';

/*class BottomSheetScreenA extends StatefulWidget {
  @override
  _BottomSheetScreenState createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreenA> {

  void _showSheet() {
    showFlexibleBottomSheet<void>(
      minHeight: 0,
      initHeight: 0.5,
      maxHeight: 1,
      context: context,
      builder: _buildBottomSheet,
      anchors: [0, 0.5, 1],
    );
  }

  void _showSheetWithoutList() {
    showStickyFlexibleBottomSheet<void>(
      minHeight: 0,
      initHeight: 0.5,
      maxHeight: .8,
      headerHeight: 200,
      context: context,
      decoration: const BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      headerBuilder: (context, offset) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(offset == 0.8 ? 0 : 40),
              topRight: Radius.circular(offset == 0.8 ? 0 : 40),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    'Header',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
              Text(
                'position $offset',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        );
      },
      builder: (context, offset) {
        return SliverChildListDelegate(
          _getChildren(offset, isShowPosition: false),
        );
      },
      anchors: [.2, 0.5, .8],
    );
  }

  List<Widget> _getChildren(double bottomSheetOffset, {bool isShowPosition}) =>
      <Widget>[
        if (isShowPosition)
          Text(
            'position $bottomSheetOffset',
            style: Theme.of(context).textTheme.headline6,
          ),
        _buildTextField(),
        _testContainer(const Color(0xEEFFFF00)),
        _buildTextField(),
        _testContainer(const Color(0xDD99FF00)),
        _buildTextField(),
        _testContainer(const Color(0xCC00FFFF)),
        _buildTextField(),
        _testContainer(const Color(0xBB555555)),
        _buildTextField(),
        _testContainer(const Color(0xAAFF5555)),
        _buildTextField(),
        _testContainer(const Color(0x9900FF00)),
        _buildTextField(),
        _testContainer(const Color(0x8800FF00)),
        _buildTextField(),
        _testContainer(const Color(0x7700FF00)),
        _buildTextField(),
      ];

  Widget _testContainer(Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        color: color,
      ),
    );
  }

  Widget _buildBottomSheet(
    BuildContext context,
    ScrollController scrollController,
    double bottomSheetOffset,
  ) {
    return SafeArea(
      child: Material(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: ListView(
              padding: const EdgeInsets.all(0),
              controller: scrollController,
              children: _getChildren(bottomSheetOffset, isShowPosition: true)),
        ),
      ),
    );
  }

  Widget _buildTextField() => const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Enter a search term',
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RaisedButton(
              onPressed: _showSheet,
              child: const Text('Open BottomSheet'),
            ),
            const SizedBox(height: 20),
            RaisedButton(
              onPressed: _showSheetWithoutList,
              child: const Text('Open StickyBottomSheet'),
            ),
          ],
        ),
      ),
    );
  }
}

Widget aa(){
  return Stack(
    children: [
      Positioned(
        bottom: 10,
        right: 20,
        left: 20,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.pink,
          ),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.save),
              Icon(Icons.save),
              Icon(Icons.save),
              Icon(Icons.save),
              Icon(Icons.save),
            ],
          ),
        ),
      ),
    ],

  );
}*/