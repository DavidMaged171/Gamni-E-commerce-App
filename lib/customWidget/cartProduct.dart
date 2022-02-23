import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../customWidget/commonWidget.dart';
import 'commonWidget.dart';

class CartProduct extends StatefulWidget {
  @override
  _CartProductState createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  var productsOnTheCart = [
    {
      "name": "Blazor",
      "image": "lib/images/blazor1.jpg",
      "price": 100,
      "color": "Black",
      "quantity": 1,
      "size": "M"
    },
    {
      "name": "T-Shirt",
      "image": "lib/images/t-shirt1.jpg",
      "price": 150,
      "color": "Blue",
      "quantity": 1,
      "size": "XL"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: productsOnTheCart.length,
        itemBuilder: (context, index) {
          return SingleCartProduct(
            prodName: productsOnTheCart[index]["name"],
            prodColor: productsOnTheCart[index]["color"],
            prodQty: productsOnTheCart[index]["quantity"],
            prodImg: productsOnTheCart[index]["image"],
            prodPrice: productsOnTheCart[index]["price"],
            prodSize: productsOnTheCart[index]["size"],
          );
        });
  }
}

class SingleCartProduct extends StatelessWidget {
  final prodName, prodImg, prodPrice, prodSize, prodColor, prodQty;

  SingleCartProduct({
    this.prodColor,
    this.prodImg,
    this.prodName,
    this.prodPrice,
    this.prodQty,
    this.prodSize,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          prodImg,
          width: 80,
          height: 80,
        ),
        title: Text(prodName),
        subtitle: Column(
          children: [
            Row(
              // =================Product Size====================
              children: [
                customPadding(4, "Size:", Colors.black),
                customPadding(2, prodSize.toString(), Colors.indigo[900]),
                // =================Product Color====================
                customPaddingLTRB(5, 5, 5, 5, "Color:", Colors.black),
                customPadding(4, prodColor, Colors.indigo[900]),
              ],
            ),
            // =================Product Price====================
            Container(
              alignment: Alignment.topLeft,
              child: customText(prodPrice.toString() + "\$", 20, Colors.red),
            ),
            Row(
              children: [
                MaterialButton(
                  minWidth: 0,
                  //height: 2,
                  child: Icon(Icons.minimize),
                  color: Colors.red,
                  onPressed: () {
                  },
                ),
                //IconButton(icon: Icon(Icons.add),color: Colors.red, onPressed: (){}),
                customPaddingLTRB(5,0,5,0, prodQty.toString(), Colors.black),
                MaterialButton(
                  minWidth: 0,
                  //height: 2,
                  child: Icon(Icons.add),
                  color: Colors.red,
                  onPressed: () {},
                ),
                //IconButton(icon: Icon(Icons.add), onPressed: () {})
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget customPadding(double padding, var text, Color color) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: customText(text, 20, color),
    );
  }

  Widget customPaddingLTRB(
      double L, double T, double R, double B, var text, Color color) {
    return Padding(
      padding: EdgeInsets.fromLTRB(L, T, R, B),
      child: customText(text, 20, color),
    );
  }
}
