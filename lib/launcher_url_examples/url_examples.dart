import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlU extends StatefulWidget {
  @override
  _UrlUState createState() => _UrlUState();
}

class _UrlUState extends State<UrlU> {
  /*_launchURL() async {
  const url = 'https://flutter.dev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
*/

  String str = "Get In App";

  /*https://www.youtube.com/watch?v=QPE2OKFLJyE*/

  var url = "https://www.youtube.com/watch?v=QPE2OKFLJyE";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            " Url Demo !",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: RaisedButton(
            child: Text(str),
            onPressed: () async {
              try {
                //  await canLaunch(url)
                //
                // ?
                await launch(url, forceWebView: true, enableJavaScript: true);
                //: throw "Could not Launched Url";
              } catch (e) {
                setState(() {
                  str = e.toString();
                });
              }
            },
          ),
        ),
      ),
    );
  }
}
