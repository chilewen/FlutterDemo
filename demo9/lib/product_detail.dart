import 'package:flutter/material.dart';
import 'product.dart';

class ProductDetail extends StatelessWidget {
  final Product product;
  ProductDetail({Key key,@required this.product}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title),),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(product.desription),
            RaisedButton(
              onPressed: (){
                Navigator.pop(context,product.title);
              },
              child: Text('返回'),
            ),
          ],
        ),
      ),
    );
  }
}