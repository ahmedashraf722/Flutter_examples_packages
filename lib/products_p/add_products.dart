import 'package:flutter/material.dart';
import 'package:flutter_examples/products_p/products_provider.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:toast/toast.dart';

class AddProducts extends StatefulWidget {
  @override
  _AddProductsState createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {
  /*var titleController = TextEditingController();
  var descController = TextEditingController();
  var priceController = TextEditingController();
  var imageUrlCont = TextEditingController();*/
  /* @override
  void dispose() {
    titleController.dispose();
    descController.dispose();
    priceController.dispose();
    imageUrlCont.dispose();
    super.dispose();
  }*/
  String title = "";
  String desc = "";
  String price = "";
  String imageUrl = "";

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: _isLoading
          ? Center(
              child: SpinKitChasingDots(
                color: Colors.pink,
                size: 25,
              ),
            )
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Title", hintText: "Add title"),
                    onChanged: (val) {
                      setState(() {
                        title = val;
                        // print(title);
                      });
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Description", hintText: "Add description"),
                    onChanged: (val) {
                      setState(() {
                        setState(() {
                          desc = val;
                        });
                      });
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Price", hintText: "Add price"),
                    onChanged: (val) {
                      setState(() {
                        price = val;
                      });
                    },
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Image Url",
                        hintText: "Paste your image url here"),
                    onChanged: (val) {
                      setState(() {
                        imageUrl = val;
                      });
                    },
                  ),
                  SizedBox(height: 30),
                  Consumer<Products>(
                    builder: (ctx, value, _) => RaisedButton(
                      color: Colors.orangeAccent,
                      textColor: Colors.black,
                      child: Text("Add Product"),
                      onPressed: () {
                        var doublePrice;
                        setState(() {
                          doublePrice = double.tryParse(price) ?? 0.0;
                        });
                        if (title == "" ||
                            desc == "" ||
                            price == "" ||
                            imageUrl == "") {
                          Toast.show("Please enter all Fields", context,
                              duration: Toast.LENGTH_LONG);
                        } else if (doublePrice == 0.0) {
                          Toast.show("Please enter a valid Number", context,
                              duration: Toast.LENGTH_LONG);
                        } else {
                          setState(() {
                            _isLoading = true;
                          });
                          value
                              .add(
                            id: DateTime.now().toString(),
                            title: title,
                            description: desc,
                            price: doublePrice,
                            imageUrl: imageUrl,
                          )
                              .catchError((_) {
                            return showDialog<Null>(
                                context: context,
                                builder: (innerC) {
                                  return AlertDialog(
                                    title: Text("An error occurred"),
                                    content: Text("Something went wrong "),
                                    actions: [
                                      FlatButton(
                                        onPressed: () {
                                          Navigator.pop(innerC);
                                        },
                                        child: Text("Okay"),
                                      ),
                                    ],
                                  );
                                });
                          }).then((_) {
                            setState(() {
                              _isLoading = false;
                            });
                            Navigator.pop(context);
                          });
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
