import 'package:flutter/material.dart';
import 'package:flutter_examples/products_p/add_products.dart';
import 'package:flutter_examples/products_p/details_products.dart';
import 'package:flutter_examples/products_p/products_provider.dart';
import 'package:provider/provider.dart';

class HomePageProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Product> prodLists =
        Provider.of<Products>(context, listen: true).productsList;
    Widget detailedCard(id, title, decs, price, String imgUrl, ctx) {
      return FlatButton(
        onPressed: () {
          Navigator.push(
              ctx, MaterialPageRoute(builder: (_) => ProductsDetails(id))).then(
            (id) => Provider.of<Products>(context, listen: false).delete(id),
          );
        },
        child: Column(
          children: [
            SizedBox(height: 4),
            Card(
              elevation: 10,
              color: Color.fromRGBO(115, 138, 119, 1),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.only(right: 10),
                      width: 130,
                      child: Hero(
                        tag: id,
                        child: Image.network(imgUrl, fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 10),
                        Text(
                          title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Divider(color: Colors.white),
                        Container(
                          width: 200,
                          child: Text(
                            decs,
                            style: TextStyle(color: Colors.white, fontSize: 14),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.justify,
                            maxLines: 3,
                          ),
                        ),
                        Divider(color: Colors.white),
                        Text(
                          "\$$price",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        SizedBox(height: 13),
                      ],
                    ),
                  ),
                  Expanded(flex: 1, child: Icon(Icons.arrow_forward_ios)),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('My Products'),
      ),
      body: prodLists.isEmpty
          ? Center(
              child: Text('No Products Added.', style: TextStyle(fontSize: 22)))
          : ListView(
              children: prodLists
                  .map(
                    (item) => Builder(
                        builder: (ctx) => detailedCard(item.id, item.title,
                            item.description, item.price, item.imageUrl, ctx)),
                  )
                  .toList(),
            ),
      floatingActionButton: Container(
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Theme.of(context).primaryColor,
        ),
        child: FlatButton.icon(
          label: Text("Add Product",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19)),
          icon: Icon(Icons.add),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => AddProducts())),
        ),
      ),
    );
  }
}
