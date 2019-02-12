import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:demo10/model/banner.dart';
import 'package:demo10/homePage/home_header.dart';


class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin {
  List <WBanner> banners = [];

  Future <void> getData () async{

    Map<String, String> baseHeader = {
      "token":"\$2a\$08\$bW3CufG4d5HGlBRWkgRSyuc5E0viJ40V8qQdDOx9TzAy84OMipXVa",
    };
    BaseOptions options = new BaseOptions(
      baseUrl: "http://139.199.21.69:4000",
      connectTimeout: 5000,
      receiveTimeout: 3000,
      headers: baseHeader,
    );
    Dio dio = new Dio(options);
    Response response= await dio.get('/webapi/v3/banners',queryParameters: {
      "company":"NZH",
      "type":"2",
    });
    List <WBanner> banners = [];
    List test = response.data['data'];
    test.forEach((data){
      print(data);
      banners.add(WBanner.formJson(data));
    });
    if (banners.length>0) {
      setState(() {
        this.banners = banners;
        banners = banners;
      });
    }
  }

  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    getData();
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dio Test')),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // getData();
          // print(this.banners.length);
        },
        child: Icon(Icons.linked_camera),
      ),
      body: Stack(
        children: <Widget>[
          RefreshIndicator(
            child: ListView(
              // controller: ,
              // semanticChildCount: ,
              children: <Widget>[
                HomeHeader(banners: banners),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
