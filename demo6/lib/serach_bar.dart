import 'package:flutter/material.dart';
import 'asset.dart';
class SearchBar extends StatefulWidget {
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SearchBar'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              showSearch(context: context,delegate: SearchBarDelegate());
            },
          ),
        ],
      ),
    );
  }
}

class SearchBarDelegate extends SearchDelegate<String>{
  @override
  List<Widget> buildActions(BuildContext context){
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: ()=> query='',
      )
    ];
  }
  @override
  Widget buildLeading(BuildContext context){
    return IconButton(
      icon: BackButtonIcon(),
      onPressed: ()=> close(context, null),
    );
  }
  @override
  Widget buildResults(BuildContext context)
  {
    return Container(
      width: 100.0,
      height: 100.0,
      child: Card(
        color: Colors.redAccent,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }
  @override
  Widget buildSuggestions(BuildContext context){
    final suggestLists = query.isEmpty 
      ? suggestList
      : searchList.where((input) => input.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggestLists.length,
      itemBuilder: (context, index) => ListTile(
        title: RichText(
          text: TextSpan(
            text: suggestLists[index].substring(0,query.length),
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: suggestLists[index].substring(query.length),
                style: TextStyle(color: Colors.grey.shade300),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
