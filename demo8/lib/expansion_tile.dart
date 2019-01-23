import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatefulWidget {
  _ExpansionTileWidgetState createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  List<int> mList;
  List<ExpandStateBean> expanStateList;
  
  _ExpansionTileWidgetState(){
    mList = new List();
    expanStateList = new List();
    for (int i=0;i<10;i++){
      mList.add(i);
      expanStateList.add(ExpandStateBean(i, false));
    }
  }

  _setCurrentIndex(int index, isExpand){
    setState(() {
      expanStateList.forEach((item){
        if (item.index==index){
          item.isOpen = !isExpand;
        }
      });
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion List Demo'),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index, bol){
            _setCurrentIndex(index, bol);
          },
          children: mList.map((index){
            return ExpansionPanel(
              headerBuilder: (context, isExpanded){
               return ListTile(
                title: Text('This is NO $index'),
               );
             },
            body: ListTile(
             title: Text('expand No $index'),
            ),
           isExpanded: expanStateList[index].isOpen,
          );
         }).toList()),
       ),
    );
  }
}

class ExpandStateBean{
  var index;
  var isOpen;
  ExpandStateBean(this.index, this.isOpen);
}