import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: BottomClipper(),
            child: Container(
              height: 300.0,
              color: Colors.deepOrangeAccent,
            ),
          ),
          Center(
            child: Tooltip(
              message: '提示',
              child: Icon(Icons.all_inclusive),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height-80);

    var firstStartPoint = Offset(size.width/2, size.height);
    var firstEndPoint = Offset(size.width, size.height-80);

    path.quadraticBezierTo(firstStartPoint.dx, firstStartPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, size.height-80);
    path.lineTo(size.width, 0);

    return path;
  }

    @override
    bool shouldReclip(CustomClipper<Path> oldClipper) {
        // TODO: implement shouldReclip
        return false;
      }
}