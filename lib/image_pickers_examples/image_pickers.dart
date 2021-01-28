import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickers extends StatefulWidget {
  @override
  _ImagePickersState createState() => _ImagePickersState();
}

class _ImagePickersState extends State<ImagePickers> {
  File _image;
  final picker = ImagePicker();

  Future getImages(ImageSource src) async {
    final pickedFile = await picker.getImage(source: src);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print("No Image Picked selected ");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Image Picker"),
      ),
      body: _image == null
          ? Center(child: Text("No Selected Images."))
          : Image.file(_image),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        onPressed: () {
          setState(() {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Container(
                      height: 160,
                      child: Column(
                        children: [
                          Divider(color: Colors.black87),
                          Container(
                            color: Colors.teal,
                            child: ListTile(
                              leading: Icon(Icons.image),
                              title: Text("Gallery"),
                              onTap: () {
                                Navigator.of(context).pop();
                                getImages(ImageSource.gallery);
                              },
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            color: Colors.teal,
                            child: ListTile(
                              leading: Icon(Icons.camera_alt),
                              title: Text("Camera"),
                              onTap: () {
                                Navigator.of(context).pop();
                                setState(() {
                                  getImages(ImageSource.camera);
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          });
        },
      ),
    );
  }
}
