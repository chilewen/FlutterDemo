import 'package:flutter/material.dart';
import 'serach_bar.dart';
void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchBar(),
      theme: ThemeData(primaryColor: Colors.blue),
      title: 'demo6',
    );
  }
}