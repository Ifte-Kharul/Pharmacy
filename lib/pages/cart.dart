import 'package:flutter/material.dart';
import 'package:pharmacy/utilities/cart_item.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Row(
          children: <Widget>[
            Text('Cart'),
            Icon(Icons.shopping_cart),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: CartItem(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text('Total'),
                subtitle: Text('\৳120'),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  'CheckOut',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
