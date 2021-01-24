import 'package:flutter/material.dart';
import 'package:flutter_examples/bottom_list/info.dart';
import 'package:intl/intl.dart';

class BodyBottom extends StatefulWidget {
  @override
  _BodyBottomState createState() => _BodyBottomState();
}

class _BodyBottomState extends State<BodyBottom> {
  Color w = Colors.white;

  final List<Info> list = [
    Info(name: 'Ahmed', length: 180, dataTime: DateTime.now()),
    Info(name: 'Ali', length: 170, dataTime: DateTime.now()),
    Info(name: 'Nada', length: 160, dataTime: DateTime.now()),
    Info(name: 'Mariam', length: 175, dataTime: DateTime.now()),
    Info(name: 'Ashraf', length: 185, dataTime: DateTime.now()),
    Info(name: 'Omar', length: 165, dataTime: DateTime.now()),
    Info(name: 'Serga', length: 180, dataTime: DateTime.now()),
    Info(name: 'Samer', length: 180, dataTime: DateTime.now()),
    Info(name: 'Love', length: 180, dataTime: DateTime.now()),
  ];

  void i(BuildContext ctx) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return ListView.builder(
          itemCount: list.length,
          itemBuilder: (ctx, index) {
            return Container(
              color: w,
              padding: EdgeInsets.all(5),
              child: Card(
                color: Theme.of(context).primaryColor,
                shadowColor: Colors.pink[700],
                elevation: 12,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            list[index].name,
                            style: TextStyle(
                              color: w,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${list[index].length}",
                            style: TextStyle(
                              color: w,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "${DateFormat().format(list[index].dataTime)}",
                        style: TextStyle(
                          color: w,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Body Bottom",
          style: TextStyle(color: w),
        ),
      ),
      body: Container(
        color: Colors.pinkAccent,
        height: double.infinity,
        child: ListView(
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1541769740-098e80269166?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80',
              fit: BoxFit.cover,
            ),
            Image.asset('assets/images/bb.png',fit: BoxFit.cover,),
            Image.asset('assets/images/w.png',fit: BoxFit.cover,),
            Image.asset('assets/images/ma.jpg',fit: BoxFit.cover,),
            Image.asset('assets/images/w.png',fit: BoxFit.cover,),
            Image.asset('assets/images/u.jpg',fit: BoxFit.cover,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: w,
        ),
        onPressed: () => i(context),
      ),
    );
  }
}
