import 'package:flutter/material.dart';
import 'package:flutter_examples/my_colors.dart';

void main() {
  runApp(Mu());
}

class Mu extends StatefulWidget {
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
}

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
