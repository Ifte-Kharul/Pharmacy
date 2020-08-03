import 'package:flutter/material.dart';
import 'package:pharmacy/homepage.dart';
import 'package:pharmacy/utilities/constants.dart';
import 'package:pharmacy/pages/cart.dart';

class ProductDetails extends StatefulWidget {
  final price;
  final picture;
  final oldPrice;
  final name;
  ProductDetails({this.name, this.oldPrice, this.picture, this.price});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: KredAccent,
        title: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomePage(),
                )),
            child: Text('Pharmacy')),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Cart(),
              ));
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            color: Colors.white54,
            child: GridTile(
              child: Container(
                child: Image.asset(widget.picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          '\৳${widget.oldPrice}',
                          style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '\৳${widget.price}',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // =========First Row of Button==========
          Row(
            children: <Widget>[
              //SIze BUtton Start
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Buying Option'),
                        content: Text('Choose an Option'),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: Text('Close'),
                          )
                        ],
                      ),
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Buying Option'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ), //Color button
              //Qty button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Quantity'),
                        content: Text('Select'),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: Text('Close'),
                          )
                        ],
                      ),
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Qty'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ), //Size button
            ],
          ),
          Row(
            children: <Widget>[
              //Buy Now button
              Expanded(
                child: MaterialButton(
                  elevation: 0.2,
                  onPressed: () {},
                  color: KredAccent,
                  textColor: Colors.white,
                  child: Text('Buy Now'),
                ),
              ),
              IconButton(
                icon: Icon(Icons.add_shopping_cart),
                color: KredAccent,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                color: KredAccent,
                onPressed: () {},
              )
            ],
          ),
          Divider(),
          ListTile(
            title: Text('Description'),
            subtitle: Text('This is a good product,made by steel'),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(
                  12.0,
                  5.0,
                  5.0,
                  5.0,
                ),
                child: Text(
                  'Product name',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.name),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(
                  12.0,
                  5.0,
                  5.0,
                  5.0,
                ),
                child: Text(
                  'Group',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('Paracetamol'),
              ),
            ],
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Related Products'),
          ),
          Container(
            height: 360.0,
            child: SimilarProducts(),
          )
        ],
      ),
    );
  }
}

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
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
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return SimilarSingleProd(
          prodName: productList[index]['name'],
          prodPicture: productList[index]['picture'],
          prodOldPrice: productList[index]['old price'],
          prodPrice: productList[index]['price'],
        );
      },
    );
  }
}

class SimilarSingleProd extends StatelessWidget {
  final prodName;
  final prodPicture;
  final prodOldPrice;
  final prodPrice;
  SimilarSingleProd(
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
                print('I love you');
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
