import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedGlassDemo extends StatefulWidget {
  _FrostedGlassDemoState createState() => _FrostedGlassDemoState();
}

class _FrostedGlassDemoState extends State<FrostedGlassDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ConstrainedBox(
            child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1545738629147&di=22e12a65bbc6c4123ae5596e24dbc5d3&imgtype=0&src=http%3A%2F%2Fpic30.photophoto.cn%2F20140309%2F0034034413812339_b.jpg'),
            constraints: const BoxConstraints.expand(),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Opacity(
                  opacity: 0.6,
                  child: Container(
                    width: 900.0,
                    height: 1000.0,
                    decoration: BoxDecoration(color: Colors.grey.shade100),
                    child: Center(
                      child: Text(
                        '毛玻璃',
                        style: Theme.of(context).textTheme.display4,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}