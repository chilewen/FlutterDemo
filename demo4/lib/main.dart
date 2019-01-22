import 'package:flutter/material.dart';
import 'frosted_glass.dart';

void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      title: 'Demo4',
      home: Scaffold(
        body: FrostedGlassDemo(),
      ),
    );
  }
}
