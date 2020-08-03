import 'package:flutter/material.dart';
import 'package:pharmacy/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Napa",
      "picture": "images/products/napa.jpg",
      "old price": 25,
      "price": 20,
    },
    {
      "name": "Montril",
      "picture": "images/products/montril.jpg",
      "old price": 100,
      "price": 50,
    },
    {
      "name": "Dental Floss1",
      "picture": "images/products/floss.jpg",
      "old price": 150,
      "price": 130,
    },
    {
      "name": "Oximeter1",
      "picture": "images/products/oximeter.jpg",
      "old price": 1500,
      "price": 1000,
    },
    {
      "name": "Dental Floss2",
      "picture": "images/products/floss.jpg",
      "old price": 150,
      "price": 130,
    },
    {
      "name": "Oximeter2",
      "picture": "images/products/oximeter.jpg",
      "old price": 1500,
      "price": 1000,
    },
    {
      "name": "Dental Floss",
      "picture": "images/products/floss.jpg",
      "old price": 150,
      "price": 130,
    },
    {
      "name": "Oximeter",
      "picture": "images/products/oximeter.jpg",
      "old price": 1500,
      "price": 1000,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return SingleProd(
          prodName: productList[index]['name'],
          prodPicture: productList[index]['picture'],
          prodOldPrice: productList[index]['old price'],
          prodPrice: productList[index]['price'],
        );
      },
    );
  }
}

class SingleProd extends StatelessWidget {
  final prodName;
  final prodPicture;
  final prodOldPrice;
  final prodPrice;
  SingleProd(
      {this.prodName, this.prodPicture, this.prodOldPrice, this.prodPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Hero(
          tag: prodName,
          child: Material(
            child: InkWell(
              onTap: () {
                print('I love Flutter');
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductDetails(
                    name: prodName,
                    picture: prodPicture,
                    price: prodPrice,
                    oldPrice: prodOldPrice,
                  ),
                ));
              },
              child: GridTile(
                footer: Container(
                  // height: 80.0,
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      prodName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    title: Text(
                      "\৳ $prodPrice ",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    subtitle: Text(
                      "\৳ $prodOldPrice",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w900,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                ),
                child: Image.asset(
                  prodPicture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
