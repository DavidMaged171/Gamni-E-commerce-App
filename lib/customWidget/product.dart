import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/productDetails.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var _productList = [
    {
      "name": "Blazor",
      "image": "lib/images/blazor1.jpg",
      "oldPrice": 120,
      "price": 100,
      "detail": "Formal blazor for men, 100% cotton",
    },
    {
      "name": "T-Shirt",
      "image": "lib/images/t-shirt1.jpg",
      "oldPrice": 200,
      "price": 150,
      "detail": "Casual T-Shirt for men, 100% cotton",
    },
    {
      "name": "Active Shoose",
      "image": "lib/images/active.jpg",
      "oldPrice": 300,
      "price": 250,
      "detail": "Running shoose for more comfort for you",
    },
    {
      "name": "Black jacket",
      "image": "lib/images/jacket.jpg",
      "oldPrice": 600,
      "price": 480,
      "detail": "Black jacket for women ",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: _productList.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            productName: _productList[index]["name"],
            productImage: _productList[index]["image"],
            oldPrice: _productList[index]["oldPrice"],
            price: _productList[index]["price"],
            productDetails: _productList[index]["detail"],
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
  final String productName, productImage, productDetails;
  final oldPrice, price;

  SingleProduct({
    this.oldPrice,
    this.price,
    this.productImage,
    this.productName,
    this.productDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
        tag: productName,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                //Passing a parameters to a details page
                builder: (context) => new ProductDetails(
                      productDetailImage: productImage,
                      productDetailName: productName,
                      productDetailOldPrice: oldPrice,
                      productDetailPrice: price,
                      productDetails: productDetails,
                    ))),
            child: GridTile(
              footer: Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          productName,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        "\$" + price.toString(),
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              child: Image.asset(
                productImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
