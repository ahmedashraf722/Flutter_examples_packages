import 'package:flutter/material.dart';
import 'package:flutter_examples/animated_examples/animated_slide_dialog_s.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    Home(),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purpleAccent,
        canvasColor: Color.fromRGBO(255, 238, 219, 1),
      ),
      home: AnimatedSlideDialogS(),
    );
  }
}
/* MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Products(),
        ),
      ],
      child: Home(),
    ),*/
/* runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MyProviders(),
        ),
      ],
      child: MyHome(),
    ),
  );*/

/*
class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ConsumerProviderSelectorsT(),
    );
  }
}

class ConsumerProviderSelectorsT extends StatefulWidget {
  @override
  _ConsumerProviderSelectorsState createState() =>
      _ConsumerProviderSelectorsState();
}

class _ConsumerProviderSelectorsState
    extends State<ConsumerProviderSelectorsT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Providers Selector and Consumers"),
      ),
      body: DefaultTextStyle(
        style: TextStyle(
          fontSize: 40,
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Provider.of<MyProviders>(context, listen: true)
                  .counter
                  .toString()),
              Text(Provider.of<MyProviders>(context, listen: false)
                  .counter
                  .toString()),
              Text(context.watch<MyProviders>().counter.toString()),
              Consumer<MyProviders>(
                builder: (ctx, val, _) {
                  return Text("${val.counter}");
                },
              ),
              Selector<MyProviders, int>(
                selector: (ctx, val) => val.counter,
                builder: (ctx, value, _) => Text("$value"),
              ),
              Text(context
                  .select<MyProviders, int>((value) => value.num)
                  .toString()),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<MyProviders>().increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
*/

/*class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<MyProviderTheme>(
        create: (_) => MyProviderTheme(),
        child: ThemeChange(),
      ),
    );
  }
}

class ThemeChange extends StatefulWidget {
  @override
  _ThemeChangeState createState() => _ThemeChangeState();
}

class _ThemeChangeState extends State<ThemeChange> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: Provider.of<MyProviderTheme>(context).tm,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.black45,
      ),
      home: ThemesT(),
    );
  }
}

class ThemesT extends StatefulWidget {
  @override
  _ThemesTState createState() => _ThemesTState();
}

class _ThemesTState extends State<ThemesT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Provider Theme"),
      ),
      drawer: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text("Light"),
            ),
            Switch(
              value: Provider.of<MyProviderTheme>(context, listen: false).slVal,
              onChanged: (bool val) =>
                  Provider.of<MyProviderTheme>(context, listen: false)
                      .switchTheme(val),
              activeColor: Colors.red,
              inactiveThumbColor: Colors.blueGrey,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text("Dark"),
            ),
          ],
        ),
      ),
    );
  }
}*/

/*

class CounterPro extends StatefulWidget {
  @override
  _CounterProState createState() => _CounterProState();
}

class _CounterProState extends State<CounterPro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo')),
      body: Center(
        child: Dashboard(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Provider.of<MyProvider>(context, listen: false).increment();
        },
      ),
    );
  }
}
*/
/*
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
*/

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
