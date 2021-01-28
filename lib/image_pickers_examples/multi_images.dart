import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class MultiImagesPickerP extends StatefulWidget {
  @override
  _MultiImagesPickerState createState() => _MultiImagesPickerState();
}

class _MultiImagesPickerState extends State<MultiImagesPickerP> {

  List<Asset> images = List<Asset>();

  Future loadAssets() async {

    List<Asset> resultList = List<Asset>();
    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
        selectedAssets: images,
        enableCamera: true,
        materialOptions: MaterialOptions(
          actionBarColor: 'green',
          selectCircleStrokeColor: 'black',
        ),
      );
      setState(() {
        images = resultList;
      });
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multi Images Picker"),
        actions: [
          FlatButton(
            onPressed: loadAssets,
            child: Text("Picked Images"),
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: List.generate(
            images.length,
            (index) => AssetThumb(
                  asset: images[index],
                  width: 250,
                  height: 250,
                )),
      ),
    );
  }
}
