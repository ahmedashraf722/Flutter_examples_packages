import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.imageUrl,
  });
}

class Products with ChangeNotifier {
  List<Product> productsList = [];

  Future<void> add({
    String id,
    String title,
    String description,
    double price,
    String imageUrl,
  }) async {
    try {
      final String url = "https://wallpaper-ea0f8.firebaseio.com/product.json";

      http.Response res = await http.post(url,
          body: json.encode({
            'id': id,
            'title': title,
            'description': description,
            'price': price,
            'imageUrl': imageUrl,
          }));

      //print(json.decode(res.body));
      productsList.add(Product(
        id: json.decode(res.body)['name'],
        title: title,
        description: description,
        price: price,
        imageUrl: imageUrl,
      ));
      notifyListeners();
    } catch (error) {
      throw error;
    }
    // print(imageUrl);
  }

  void delete(String id) {
    productsList.removeWhere((element) => element.id == id);
    notifyListeners();
    // print("Item Deleted");
  }
}
