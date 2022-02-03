import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  HorizontalList({IconData icon}) {
    this.icon = icon;
  }

  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          new Icon(icon),
        ],
      ),
    );
  }
}

class Categoryy extends StatelessWidget {
  final String imageUrl, imageCaption;

  Categoryy(this.imageCaption, this.imageUrl) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(
              imageUrl,
              width: 100,
              height: 100,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                imageCaption,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
