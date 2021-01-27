import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiDemo extends StatefulWidget {
  @override
  _ApiDemoState createState() => _ApiDemoState();
}

class _ApiDemoState extends State<ApiDemo> {
  Future fetchApiPhotos() async {
    var res = await http.get("https://jsonplaceholder.typicode.com/photos");
    if (res.statusCode == 200) {
      var a = json.decode(res.body);
      return a;
    }
  }

  @override
  void initState() {
    fetchApiPhotos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Api Demo"),
        ),
        body: Center(
          child: FutureBuilder(
            future: fetchApiPhotos(),
            builder: (context, snapShot) {
              if (snapShot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else {
                return ListView.builder(
                  //itemCount: 20,
                  itemBuilder: (ctx, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(snapShot.data[index]['thumbnailUrl']),
                      ),
                      title: Text(snapShot.data[index]['title']),
                      subtitle: Text("${snapShot.data[index]['id']}"),
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
