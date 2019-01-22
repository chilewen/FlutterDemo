import 'package:flutter/material.dart';
import 'each_view.dart';

class BottomNavigationDemo extends StatefulWidget {
  _BottomNavigationDemoState createState() => _BottomNavigationDemoState();
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo> {
  int _index = 0;
  List <Widget> _list;

  @override
  void initState() {
      // TODO: implement initState
      super.initState();
      _list = List();
      _list..add(EachView('Home'))..add(EachView('Tab'))..add(EachView('Email'))..add(EachView('Money'))..add(EachView('Home'));
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            return EachView('Add New Page');
          }));
        },
        tooltip: '添加啊',
        // shape: CircularNotchedRectangle,
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
              tooltip: 'Home',
              onPressed: (){
                setState(() {
                  _index = 0;
               });
              },
            ),
            IconButton(
              icon: Icon(Icons.tab),
              tooltip: 'Tab',
              onPressed: (){
                setState(() {
                  _index = 1;
               });
              },
            ),
            IconButton(
              icon: Icon(Icons.hourglass_empty),
              color: Colors.lightBlue,
              onPressed: (){

              },
            ),
            IconButton(
              icon: Icon(Icons.money_off),
              tooltip: 'Money',
              onPressed: (){
                setState(() {
                  _index = 3;
               });
              },
            ),
            IconButton(
              icon: Icon(Icons.help_outline),
              tooltip: 'Honey',
              onPressed: (){
                setState(() {
                  _index = 4;
               });
              },
            ),
          ],
        ),
      ),
    );
  }
}