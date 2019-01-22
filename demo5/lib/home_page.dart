import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with AutomaticKeepAliveClientMixin {
  int _temp = 0;
  @override
  bool get wantKeepAlive => true;
  void _incrementAction (){
    setState(() {_temp++;});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('点一下增加1'),
            Text('$_temp'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'increment',
        child: Icon(Icons.add),
        onPressed: _incrementAction,
      ),
    );
  }
}