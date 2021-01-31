import 'package:flutter/material.dart';

class AnimatedCustomT extends StatefulWidget {
  @override
  _AnimatedCustomTState createState() => _AnimatedCustomTState();
}

class _AnimatedCustomTState extends State<AnimatedCustomT>
    with SingleTickerProviderStateMixin {
  double height = 50;
  AnimationController _animationController;
  Animation<Size> _animationSize;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 400,
      ),
    )..repeat();
    _animationSize =
        Tween<Size>(begin: Size(200, 150), end: Size(200, 350)).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.linear,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title: Text("Animation Custom"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedBuilder(
            animation: _animationController,
            builder: (ctx, child) {
              return FlutterLogo(size: _animationSize.value.height);
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward),
            title: Text('Forward'),
            tileColor: Colors.green,
            onTap: () {
              setState(() {
                _animationController.forward();
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text('Back'),
            tileColor: Colors.red[700],
            onTap: () {
              setState(() {
                _animationController.reverse();
              });
            },
          ),
        ],
      ),
    );
  }
}
