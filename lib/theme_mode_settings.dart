import 'package:flutter/material.dart';

class ThemeModeSettings extends StatefulWidget {
  @override
  _ThemeModeSettingsState createState() => _ThemeModeSettingsState();
}

class _ThemeModeSettingsState extends State<ThemeModeSettings> {
  ThemeMode themeMode = ThemeMode.light;
  bool _sValue = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: themeMode,
      theme: ThemeData(primaryColor: Colors.blue, canvasColor: Colors.white),
      darkTheme:
          ThemeData(primaryColor: Colors.pink, canvasColor: Colors.black87),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Theme Mode"),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(35),
                child: Text("Light"),
              ),
              Switch(
                activeColor: Colors.redAccent,
                inactiveThumbColor: Colors.blue,
                value: _sValue,
                onChanged: (bool v) {
                  setState(() {
                    _sValue = v;
                    if (_sValue == false) {
                      themeMode = ThemeMode.light;
                    } else {
                      themeMode = ThemeMode.dark;
                    }
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(35),
                child: Text("Dark"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
