import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

Widget getImageCarousel() {
  Widget image_carousel = new Container(
    height: 200,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('lib/images/im1.png'),
        AssetImage('lib/images/im2.png'),
        AssetImage('lib/images/im3.png'),
        AssetImage('lib/images/im4.png'),
      ],
      autoplay: false,
      dotSize: 5,
      indicatorBgPadding: 2,
      dotColor: Colors.red,
      //animationCurve: Curves.fastOutSlowIn,
      //animationDuration: Duration(milliseconds: 100),
    ),
  );
  return image_carousel;
}

Widget customText(String text,double fontSize,Color color) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.bold,
    ),
  );
}
