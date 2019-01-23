import 'package:flutter/material.dart';
import 'home_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo9',
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
      ),
      home: HomePage(),
    );
  }
}
