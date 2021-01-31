import 'package:flutter/material.dart';
import 'package:residemenu/residemenu.dart';

class AnimatedResideMenuEx extends StatefulWidget {
  @override
  _AnimatedResideMenuExState createState() => _AnimatedResideMenuExState();
}

class _AnimatedResideMenuExState extends State<AnimatedResideMenuEx>
    with SingleTickerProviderStateMixin {
  MenuController _menuController;

  @override
  void initState() {
    _menuController = MenuController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _menuController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResideMenu.scaffold(
      // enable3dRotate: true,
      //enableScale: true,
      enableFade: true,
      leftScaffold: MenuScaffold(
        children: [
          FlatButton.icon(
            onPressed: () {},
            icon: Icon(Icons.engineering_rounded),
            label: Text('Option1'),
          ),
          FlatButton.icon(
            onPressed: () {},
            icon: Icon(Icons.engineering_rounded),
            label: Text('Option2'),
          ),
          FlatButton.icon(
            onPressed: () {},
            icon: Icon(Icons.engineering_rounded),
            label: Text('Option3'),
          ),
          FlatButton.icon(
            onPressed: () {},
            icon: Icon(Icons.engineering_rounded),
            label: Text('Option4'),
          ),
        ],
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.pink,
            Colors.pinkAccent,
          ],
        ),
      ),
      controller: _menuController,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => _menuController.openMenu(true),
          ),
          centerTitle: true,
          title: Text('Reside Menu'),
        ),
        body: Center(
          child: Builder(
            builder: (ctx) => FlatButton(
              onPressed: () {},
              child: FlutterLogo(
                size: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
