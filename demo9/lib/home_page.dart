import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'product_detail.dart';
import 'product.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> products;
  @override
  void initState() {
    products = new List();
      for (int i=0;i<15;i++){
        products.add(Product('第$i个商品','这是一个商品详情，编号为:$i'));
      }
      super.initState();
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('商品列表'),),
      body: ProductList(products:products),
    );
  }
}

class ProductList extends StatelessWidget {
  final List<Product> products;
  ProductList({Key key,@required this.products}):super(key:key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(products[index].title),
            onTap: (){
              // Navigator.push(context,
              // MaterialPageRoute(builder: (context)=> new ProductDetail(product: products[index],))  
              // );
              _btnAction(context, index);
              // final result = Navigator.push(context,
              // MaterialPageRoute(builder: (context)=> new ProductDetail(product: products[index],))  
              // );
              // Scaffold.of(context).showSnackBar(SnackBar(
              //   content: Text('$result'),
              // ));
            }
          );
        },
      ),
    );
  }

  _btnAction(BuildContext context,int index) async{
    final result = await Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetail(product: products[index])));
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$result'),
      duration: Duration(milliseconds: 1000),
    ));
  }

}