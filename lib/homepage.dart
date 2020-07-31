import 'package:flutter/material.dart';
import 'utilities/constants.dart';
import 'utilities/inkwell.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'utilities/horizontal_list.dart';
import 'utilities/productList.dart';
import 'cart.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imageCar = Container(
      height: 250.00,
      child: Carousel(
        images: [
          AssetImage("images/1.jpg"),
          AssetImage("images/2.jpg"),
          AssetImage("images/3.jpg"),
          AssetImage("images/4.jpg"),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(seconds: 1),
        boxFit: BoxFit.cover,
        dotSize: 4.00,
        indicatorBgPadding: 5.00,
        dotBgColor: Colors.transparent,
        dotColor: KredAccent,
      ),
    );
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Pharmacy"),
          actions: <Widget>[
            //IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
            IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Cart(),
                  ));
                }),
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('IfteKharul'),
                accountEmail: Text('iftekharulislam309@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                  ),
                ),
                decoration: BoxDecoration(
                  color: KredAccent,
                ),
              ),
              // ListTile(
              //   leading: Icon(Icons.home),
              //   title: Text('Home'),
              // )
              InkDrawer(
                logo: Icons.person,
                text: Text('My Account'),
                onPress: () {},
              ),
              InkDrawer(
                logo: Icons.home,
                text: Text('Home'),
                onPress: () {},
              ),
              InkDrawer(
                logo: Icons.shopping_basket,
                text: Text('My Orders'),
                onPress: () {},
              ),
              InkDrawer(
                logo: Icons.shopping_cart,
                text: Text('Cart'),
                onPress: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Cart(),
                  ));
                },
              ),

              Divider(),
              InkDrawer(
                logo: Icons.settings,
                text: Text('Settings'),
                colour: Colors.grey,
                onPress: () {},
              ),
              InkDrawer(
                logo: Icons.help,
                text: Text('About'),
                colour: Colors.green,
                onPress: () {},
              ),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            imageCar,
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Catagories'),
            ),
            HorizontalList(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Recent Mediciens'),
            ),
            Container(height: 300.0, child: Products()),
          ],
        ),
      ),
    );
  }
}
