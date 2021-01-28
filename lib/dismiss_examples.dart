import 'package:flutter/material.dart';

class DismissExample extends StatefulWidget {
  @override
  _DismissExampleState createState() => _DismissExampleState();
}

class _DismissExampleState extends State<DismissExample> {
  final li = List<String>.generate(25, (index) => "Item Num ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dismiss"),
      ),
      body: ListView.builder(
        itemCount: li.length,
        itemBuilder: (ctx, index) {
          final item = li[index];
          return Dismissible(
            confirmDismiss: (DismissDirection dir) async {
              if (dir == DismissDirection.startToEnd) {
                final bool res = await showDialog(
                    context: ctx,
                    builder: (ctx) {
                      return AlertDialog(
                        content: Text("Are you sure want to delete $item"),
                        actions: [
                          FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("Cancel"),
                          ),
                          FlatButton(
                            onPressed: () {
                              setState(() {
                                li.removeAt(index);
                              });
                              Navigator.of(context).pop();
                            },
                            child: Text("Delete"),
                          ),
                        ],
                      );
                    });
                return res;
              }
              return true;
            },
            key: Key(item),
            background: Container(
              color: Colors.red[700],
              alignment: Alignment.centerLeft,
              child: Icon(Icons.auto_delete),
            ),
            secondaryBackground: Container(
              color: Colors.green[700],
              alignment: Alignment.centerRight,
              child: Icon(Icons.thumb_up),
            ),
            onDismissed: (DismissDirection direction) {
              setState(() {
                li.removeAt(index);
              });
              Scaffold.of(ctx).showSnackBar(
                SnackBar(
                  content: Text(direction == DismissDirection.startToEnd
                      ? "$item Deleted"
                      : "$item Liked"),
                  action: SnackBarAction(
                    label: 'UNDO',
                    onPressed: () {
                      setState(() {
                        li.insert(index, item);
                      });
                    },
                  ),
                ),
              );
            },
            child: ListTile(
              title: Center(
                child: Text(item),
              ),
            ),
          );
        },
      ),
    );
  }
}
