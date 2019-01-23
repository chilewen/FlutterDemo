import 'package:flutter/material.dart';
import 'home_page.dart';

class FlashPage extends StatefulWidget {
  _FlashPageState createState() => _FlashPageState();
}

class _FlashPageState extends State<FlashPage> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,duration: Duration(milliseconds: 3000));
    _animation = Tween(begin: 0.0,end: 1.0).animate(_controller);

    _animation.addStatusListener((status){
      if (status==AnimationStatus.completed){
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>HomePage()), (route)=>route==null);
      }
    });
    _controller.forward();
    }

    @override
    void dispose() {
        _controller.dispose();
        super.dispose();
      }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network('http://imgsrc.baidu.com/imgad/pic/item/9d82d158ccbf6c8154bdd5ccb63eb13533fa4008.jpg',
        fit: BoxFit.cover,
        scale: 2.0,
      ),
    );
  }
}