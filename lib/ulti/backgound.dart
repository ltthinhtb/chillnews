import 'package:flutter/material.dart';

var PageList = [
  PageModel(
    imageUrl : "assets/onbroading1.png",
    title : "Thời Gian",
    body : "Đi Chill Đúng Lúc",
    titleGradient : gradients[0],
  ),


  PageModel(
    imageUrl : "assets/onbroading2.png",
    title : "Cuộc Sống",
    body : "Hút Gì cho Phê",
    titleGradient : gradients[1],
  ),

  PageModel(
    imageUrl : "assets/onbroading3.png",
    title : "Địa Điểm",
    body : "Quẩy Đến Sáng",
    titleGradient : gradients[2],
  ),
];

  List<List<Color>> gradients = [
  [Color(0xFF9708CC), Color(0xFF43CBFF)],
  [Color(0xFFE2859F), Color(0xFFFCCF31)],
  [Color(0xFF5EFCE8), Color(0xFF736EFE)],
];

class PageModel {
  var imageUrl;
  var title;
  var body;
  List<Color> titleGradient = [];
  PageModel({this.imageUrl, this.title, this.body, this.titleGradient});
}


class PageIndicator extends StatelessWidget {
  final int currentIndex;
  final int pageCount;
  PageIndicator(this.currentIndex, this.pageCount);

  _indicator(bool isActive) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.0),
        child: Container(
          height: 4.0,
          decoration: BoxDecoration(
              color: isActive ? Colors.white : Color(0xFF3E4750),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 2.0),
                    blurRadius: 2.0)
              ]),
        ),
      ),
    );
  }

  _buildPageIndicators() {
    List<Widget> indicatorList = [];
    for (int i = 0; i < pageCount; i++) {
      indicatorList
          .add(i == currentIndex ? _indicator(true) : _indicator(false));
    }
    return indicatorList;
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: _buildPageIndicators(),
    );
  }
}