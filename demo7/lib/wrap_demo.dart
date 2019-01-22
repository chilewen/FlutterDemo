import 'package:flutter/material.dart';

class WrapDemo extends StatefulWidget {
  _WrapDemoState createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {
  List<Widget> list;
  @override
  void initState() { 
    super.initState();
    list = List<Widget>()..add(buildAddBtn());
  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('wrap流式布局'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: width,
            height: height/2,
            color: Colors.grey,
            child: Wrap(
              children: list,
              spacing: 25.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAddBtn(){
    return GestureDetector(
      onTap: (){
        if(list.length<9){
          setState(() {
          list.insert(list.length-1, buildPhoto());
          });
        }else{
          showDialog(
            context: context,
            barrierDismissible: true,
            builder: (BuildContext context){
              return AlertDialog(
                title: Text('提示'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Text('提示1'),
                      Text('提示2'),
                    ],
                  ),
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.save),
                    onPressed: (){},
                  ),
                  FlatButton(
                    child: Text('取消'),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            }
          ).then((val){
            print(val);
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.black12,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget buildPhoto(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.amber,
      ),
    );
  }
}