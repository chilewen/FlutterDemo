import 'package:flutter/material.dart';
import 'wrap_demo.dart';
void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
      ),
      title: 'demo7',
      home: WrapDemo(),
    );
  }
}