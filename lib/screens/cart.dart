import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/customWidget/cartProduct.dart';

import '../customWidget/commonWidget.dart';
import '../customWidget/commonWidget.dart';
import '../customWidget/commonWidget.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0,
        title: Text('Cart'),
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
      body: CartProduct(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          color: Colors.white,
          child: Row(
            children: [
              Expanded(
                child: ListTile(
                  title: customText("Total: ", 25, Colors.black),
                  subtitle: customText("230\$", 20, Colors.black45),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  height: 50,
                  color: Colors.red,
                  onPressed: () {},
                  child: customText("Check Out", 25, Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
