import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:demo10/model/banner.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeHeader extends StatefulWidget {
  final List <WBanner> banners;
  const HomeHeader({Key key, this.banners}):super(key:key);
  _HomeHeaderState createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  
  @override
  Widget build(BuildContext context) {
    // return
    return TestHeader(widget.banners);
  }
}

class TestHeader extends StatelessWidget {
  final List<WBanner> topicInfos;

  TestHeader(this.topicInfos);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (topicInfos.length == 0) {
      return SizedBox(

      );
    } else {
      return Container(
        width: width,
        height: 0.6*width,
        child: Swiper(
          itemBuilder: (BuildContext context,int index){
            WBanner banner = topicInfos[index];
            return new Image.network(banner.src,fit: BoxFit.fill,);
          },
          itemCount: topicInfos.length,
          pagination: new SwiperPagination(),
          control: new SwiperControl(),
          autoplay: true,
          autoplayDelay: 3000,

        ),
      );
    }
  }
}