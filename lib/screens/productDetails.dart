import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/HomePage.dart';

class ProductDetails extends StatefulWidget {
  final productDetailName,
      productDetailPrice,
      productDetailOldPrice,
      productDetails,
      productDetailImage;

  ProductDetails({
    this.productDetailImage,
    this.productDetailName,
    this.productDetailOldPrice,
    this.productDetailPrice,
    this.productDetails,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0,
        title: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
          child: Text('Gamni'),
        ),
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
      body: ListView(
        children: [
          new Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.productDetailImage),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: customText(widget.productDetailName, 30, Colors.red),
                  title: Row(
                    children: [
                      Expanded(
                        child: customText(
                            "\$" + widget.productDetailPrice.toString(),
                            25,
                            Colors.black),
                      ),
                      Expanded(
                        child: customText(
                            "\$" + widget.productDetailOldPrice.toString(),
                            25,
                            Colors.grey,
                            isLineThrough: true),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              customDropDownBox("Size"),
              customDropDownBox("Color"),
              customDropDownBox("Qty"),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.indigo[900],
                    textColor: Colors.white,
                    elevation: 2,
                    child: customText("Buy now", 25, Colors.white),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  color: Colors.red,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.red,
                  onPressed: () {},
                )
              ],
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              "Details",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            subtitle: Text(
              widget.productDetails,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Divider(),
          customDetails("Product Name: ", widget.productDetailName),
          customDetails("Product Brand: ", "Brand X"),
        ],
      ),
    );
  }

  Widget customText(String text, double fontSize, Color color,
      {bool isLineThrough = false}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.bold,
          decoration:
              isLineThrough ? TextDecoration.lineThrough : TextDecoration.none),
    );
  }

  Widget customDropDownBox(String text) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return new AlertDialog(
                  title: Text(text),
                  content: Text(
                    "Choose The " + text,
                  ),
                  actions: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pop(context);
                      },
                      child: Text("OK"),
                    )
                  ],
                );
              });
        },
        color: Colors.white,
        textColor: Colors.grey,
        elevation: 0.2,
        child: Row(
          children: [
            Expanded(
              child: Text(text),
            ),
            Expanded(
              child: Icon(Icons.arrow_drop_down),
            ),
          ],
        ),
      ),
    );
  }

  Widget customDetails(String question, String answer) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
          child: Text(
            question,
            style: TextStyle(
                color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            answer,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}
