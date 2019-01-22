import 'package:flutter/material.dart';
import 'pages.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
      title: 'Demo3',
      theme: ThemeData.light(),
    );
  }
}