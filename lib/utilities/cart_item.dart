import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  var product_on_list = [
    {
      "name": "Napa",
      "picture": "images/products/napa.jpg",
      "qty": "2",
      "type": "box",
      "price": 20,
    },
    {
      "name": "Montril",
      "picture": "images/products/montril.jpg",
      "qty": "2",
      "type": "single page",
      "price": 50,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: product_on_list.length,
        itemBuilder: (context, index) {
          return SingleProductCart(
            cartprodName: product_on_list[index]['name'],
            cartprodPicture: product_on_list[index]['picture'],
            cartprodPrice: product_on_list[index]['price'],
            cartprodType: product_on_list[index]['type'],
            cartprodQty: product_on_list[index]['qty'],
          );
        },
      ),
    );
  }
}

class SingleProductCart extends StatelessWidget {
  final cartprodName;
  final cartprodPicture;
  final cartprodType;

  final cartprodQty;
  final cartprodPrice;
  SingleProductCart(
      {this.cartprodName,
      this.cartprodPicture,
      this.cartprodType,
      this.cartprodPrice,
      this.cartprodQty});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image(
          image: AssetImage(
            cartprodPicture,
          ),
        ),
        title: Text(cartprodName),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Type'),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    cartprodType,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              // padding: EdgeInsets.only(right: 12.0),

              child: Text(
                '\৳$cartprodPrice',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w900,
                ),
              ),
            )
          ],
        ),
        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_drop_up,
                  size: 40.0,
                ),
                onPressed: () {},
              ),
              Text(
                '$cartprodQty',
                style: TextStyle(fontSize: 30.0),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_drop_down,
                  size: 40.0,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
