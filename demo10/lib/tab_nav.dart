import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'list_page.dart';
import 'homePage/home_page.dart';
class TabBarNavigation extends StatefulWidget {
  _TabBarNavigationState createState() => _TabBarNavigationState();
}

class _TabBarNavigationState extends State<TabBarNavigation> {
  int _currentIndex = 0;
  var tabImages;
  var appBarTitles = ['首页', '分类', '购物车', '个人'];
  // List <Tab> _tabList;
  // TabController controller;
  var _bodys = [
          new HomePage(),
          new ListPage('222'),
          new ListPage('333'),
          new ListPage(''),
        ];

  Image getTabImage(path) {
    return new Image.asset(path, width: 20, height: 20,);
  }

  Image getTabIcon(int currentIndex) {
    if (currentIndex == _currentIndex) {
      return tabImages[_currentIndex][0];
    }
    return tabImages[currentIndex][1];
  }

  Text getTabTitle(int currentIndex) {
    if (currentIndex == _currentIndex) {
      return Text(appBarTitles[currentIndex], style: TextStyle(color: const Color(0xffFFA800), fontSize: 12),);
    } else { 
      return Text(appBarTitles[currentIndex], style: TextStyle(color: const Color(0xff666666), fontSize: 12),);
    }
  }
  @override
  void initState() {
    super.initState();
    tabImages = [
      [
        getTabImage('lib/images/icon-shouye-h@2x.png'),
        getTabImage('lib/images/icon-shouye-n@2x.png'),
      ],
      [
        getTabImage('lib/images/icon-fenlei-h@2x.png'),
        getTabImage('lib/images/icon-fenlei-n@2x.png'),
      ],
      [
        getTabImage('lib/images/icon-gouwuche-h@2x.png'),
        getTabImage('lib/images/icon-gouwuche-n@2x.png'),
      ],
      [
        getTabImage('lib/images/icon-geren-h@2x.png'),
        getTabImage('lib/images/icon-geren-n@2x.png'),
      ],
    ];
  }

  @override
  void dispose() {
    // controller.dispose();
    super.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _bodys,
      ),
      bottomNavigationBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: getTabIcon(0),title: getTabTitle(0)),
          BottomNavigationBarItem(icon: getTabIcon(1),title: getTabTitle(1)),
          BottomNavigationBarItem(icon: getTabIcon(2),title: getTabTitle(2)),
          BottomNavigationBarItem(icon: getTabIcon(3),title: getTabTitle(3)),
        ],
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      )
    );
  }
}


