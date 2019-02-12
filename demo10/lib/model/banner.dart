class WBanner {
  String name;
  String link;
  String src;
  String bgColor;

  WBanner.formJson(Map data){
    name = data['name'];
    link = data['link'];
    src = data['src'];
    bgColor = data['bgColor'];
  }
}