import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_examples/new_screen/custom_appbar.dart';
import 'package:flutter_examples/new_screen/list_balance.dart';
import 'package:flutter_examples/new_screen/send_again.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class TotalScreen extends StatefulWidget {
  @override
  _TotalScreenState createState() => _TotalScreenState();
}

class _TotalScreenState extends State<TotalScreen> {
  ScrollController _hideScrollController;

  // bool _isVisible = true;

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
            )),
      ),
    );
  }

/*
  @override
  void initState() {
    _hideScrollController = ScrollController();
    _hideScrollController.addListener(() {
      if (_hideScrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _isVisible = false;
        });
      }
      if (_hideScrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _isVisible = true;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _hideScrollController.dispose();
    super.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CustomAppBar(),
                  Positioned(
                    bottom: 15,
                    left: 30,
                    right: 30,
                    child: SendAgain(),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      buildBottom(context);
                    });
                  },
                  child: Text(
                    'Recent Activity',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      controller: _hideScrollController,
                      itemCount: 10,
                      itemBuilder: (ctx, i) {
                        return ListBalance();
                      }))
            ],
          ),
        ],
      ),
      /*bottomNavigationBar: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: _isVisible ? 60 : 0.0,
        child: BottomAppBar(
          elevation: 8,
          shape: CircularNotchedRectangle(),
          color: Colors.teal[400],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home),
              Icon(Icons.add_a_photo),
              Icon(Icons.verified_user),
              Icon(Icons.more),
            ],
          ),
        ),
      ),*/
    );
  }
}
