import 'package:flutter/material.dart';
import 'each_view.dart';

class BottomAppBarDemo extends StatefulWidget {
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  int _index = 0;
  List <Widget> _eachView;
  @override
  void initState() {
      // TODO: implement initState
      super.initState();
      _eachView = List();
      _eachView..add(EachView('Home Page'))..add(EachView('Second Page'));
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachView[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // Navigator.of(context).push(MaterialPageRoute(builder:(Builder context){
          //   return EachView('New Page');
          // }));
          Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
            return EachView('New Page');
          }));
        },
        tooltip: 'hhh',
        child: Icon(
          Icons.add,
          color: Colors.lightBlue,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: (){
                setState(() {
                  _index = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.note),
              color: Colors.white,
              onPressed: (){
                setState(() {
                  _index = 1;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}