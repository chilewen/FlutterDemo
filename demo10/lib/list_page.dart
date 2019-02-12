import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ListPage extends StatefulWidget {
  final String _title;
  ListPage(this._title);
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State <ListPage> with AutomaticKeepAliveClientMixin{
  int _temp = 0;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget._title),),
      body: Center(
        child: Container(
          width: 100.0,
          height: 200.0,
          color: Colors.yellowAccent,
          child: Text('$_temp'),
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            _temp = _temp + 1;
            print('$_temp');
          });
        },
      ),
    );
  }
}

// class ListPage extends StatefulWidget {
//   _ListPageState createState() => _ListPageState();
// }

// class _ListPageState extends State<ListPage> {
//   int _count = 10;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('列表刷新')),
//       body: SafeArea(
//         child: RefreshIndicator(
//           onRefresh: (){
//             _count = 20;
//           },
//           child: ListView.builder(
//             itemCount: 10,
//             itemBuilder: (context, index){
//               return Container(
//                 height: 44.0,
//                 color: Colors.blueGrey,
//                 padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
//                 child: Row(
//                   children: <Widget>[
//                     Icon(Icons.access_alarm),
//                     Text('这是第$index个',style: TextStyle(fontSize: 20.0),),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

