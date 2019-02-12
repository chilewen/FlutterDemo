import 'package:flutter/material.dart';
import 'tab_nav.dart';
void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo10',
      theme: ThemeData.light(),
      home: TabBarNavigation(),
    );
  }
}