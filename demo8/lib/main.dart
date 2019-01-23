import 'package:flutter/material.dart';
import 'expansion_tile.dart';
import 'home_page.dart';
import 'flash_page.dart';
import 'draggabel_widget.dart';
void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo8',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      // home: ExpansionTileWidget(),
      home: FlashPage(),
      // home: DraggableDemo(),
    );
  }
}