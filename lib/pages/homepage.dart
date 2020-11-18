import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy/utilities/constants.dart';
import 'package:pharmacy/utilities/inkwell.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:pharmacy/utilities/horizontal_list.dart';
import 'package:pharmacy/utilities/productList.dart';
import 'cart.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class HomePage extends StatelessWidget {
  final String mail;
  final googleUser = GoogleSignIn();
  final facebookuser = FacebookLogin();
  final _auth = FirebaseAuth.instance;
  HomePage({
    this.mail,
  });
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
                accountEmail: Text('$mail'),
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
                logo: Icons.input,
                text: Text('Log Out'),
                colour: Colors.green,
                onPress: () {
                  _auth.signOut();
                  googleUser.signOut();
                  facebookuser.logOut();
                  Navigator.pushReplacementNamed(context, '/login');
                },
              ),
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(flex: 3, child: imageCar),
            Expanded(
              flex: 0,
              child: Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
                    'Catagories',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
            Expanded(flex: 1, child: HorizontalList()),
            Expanded(
              flex: 0,
              child: Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
                    'Recent Mediciens',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
            Expanded(flex: 3, child: Products()),
          ],
        ),
      ),
    );
  }
}
