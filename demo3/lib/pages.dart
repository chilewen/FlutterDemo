import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page',style: TextStyle(fontSize: 36.0),),
        elevation: 4.0,
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64,
          ),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return SecondPage();
            }));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page', style: TextStyle(fontSize: 36.0),),
        // backgroundColor: Colors.pink,
        elevation: 0.0,
      ),
      backgroundColor: Colors.pink,
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}