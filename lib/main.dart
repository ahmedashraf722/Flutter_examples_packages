import 'package:flutter/material.dart';
import 'package:flutter_examples/sign.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences _pref = await SharedPreferences.getInstance();
  var email = _pref.getString("e");
  var password = _pref.getString("p");

  runApp(email != null && password != null ? Home() : Sign());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Main Screen"),
        ),
        body: Center(
          child: Text("Main Screen SuccessFull"),
        ),
      ),
    );
  }
}

/*
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    setData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Main Screen"),
        ),
        body: Center(
          child: Builder(
             builder: (ctx) => RaisedButton(
                child: Text("Go to Another Screen"),
                onPressed: () {
                  Navigator.of(ctx)
                      .push(MaterialPageRoute(builder: (ctx) => Another()));
                }),
          ),
        ),
      ),
    );
  }

  setData() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();

    _pref.setString('name', 'Ahmed');
    _pref.setInt('age', 24);
    _pref.setDouble('height', 181.5);
    _pref.setBool('developer', true);
    _pref.setStringList('skill', ['Dart', 'Flutter']);
  }
}
*/

/*class Mu extends StatefulWidget {
  @override
  _MuState createState() => _MuState();
}

class _MuState extends State<Mu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyColors(
            color: Colors.lightBlueAccent,
            child:  Builder(
              builder: (ctx)=> Text(
                "My Texts",
                style: TextStyle(
                  backgroundColor: MyColors.of(ctx).color,
                  fontSize: 50,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}*/

/*void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();
  bool decision = pref.getBool('x');
  Widget _screen = (decision == false || decision == null)
      ? PageViewScreens()
      : ImagesSlides();

  runApp(_screen);
}*/

/*class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.pink,
        fontFamily: 'Quicksand',
      ),*/
    );
  }
}
*/
