import 'package:flutter/material.dart';
import 'package:flutter_examples/api_to_modal/model/model/post.dart';
import 'package:flutter_examples/api_to_modal/service/service/postService.dart';

class ApiToModal extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ApiToModal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Api")),
        body: Container(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () async {
            var p = PostApi();
            List<Post> data = await p.fetchData();

            for (final i in data) {
              print("${i.userId}");
              print("${i.id}");
              print(i.title);
              print(i.body);
            }
          },
        ),
      ),
    );
  }
}
