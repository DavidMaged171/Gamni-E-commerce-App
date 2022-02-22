import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/customWidget/GamniDrawer.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_app/customWidget/horizontalList.dart';
import 'package:flutter_app/customWidget/product.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(

        elevation: 0,
        title: Text('Gamni'),
        backgroundColor: Colors.red,
        actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: GamniDrawer(),
      body: new ListView(
        children: [
          getImageCarousel(),
          categoriesText(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              //scrollDirection:Axis.vertical ,
              children: [
                Categoryy("T-Shirt", "lib/images/tshirt3.png"),
                Categoryy("dresses", "lib/images/dress.png"),
                Categoryy("Shoes", "lib/images/shoes.png"),
                Categoryy("Formal", "lib/images/formal.png"),
                Categoryy("Pants", "lib/images/pants.png"),
              ],
            ),

          ),
          Container(
            height: 320,
            child: Products(),
          ),
        ],
      ),
    );
  }
}

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
      autoplay: true,
      dotSize: 5,
      indicatorBgPadding: 2,
      dotColor: Colors.transparent,
      //animationCurve: Curves.fastOutSlowIn,
      //animationDuration: Duration(milliseconds: 100),
    ),
  );
  return image_carousel;
}

Widget categoriesText() {
  return Padding(
    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
    child: Text(
      "Categories",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
