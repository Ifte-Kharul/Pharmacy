import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './owner_page.dart';

class SettingPage extends StatelessWidget {
  final c = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Container(
            //color: Colors.red,
            child: Row(
              children: [
                Align(
                  child: Container(
                    padding: EdgeInsets.only(left: 10.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        //color: Colors.red,
                        child: Icon(
                          Icons.chevron_left,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  alignment: Alignment.centerRight,
                ),
                Container(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 7,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.white)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OwnerPage()),
              );
            },
            child: Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.account_circle_rounded,
                    color: Colors.black,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Account',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 170.0),
                    child: Icon(
                      Icons.chevron_right,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.white)),
            autofocus: false,
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.notification_important_outlined,
                    color: Colors.black,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(),
                    child: Text(
                      'Notifications',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.only(left: 130.0),
                      child: Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.white)),
            autofocus: false,
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.remove_red_eye,
                    color: Colors.black,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(),
                    child: Text(
                      'Appearance',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.only(left: 140.0),
                      child: Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.white)),
            autofocus: false,
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(),
                    child: Text(
                      'Privacy & Security',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.only(left: 85.0),
                      child: Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.white)),
            autofocus: false,
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.headset,
                    color: Colors.black,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(),
                    child: Text(
                      'Support',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.only(left: 175.0),
                      child: Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.white)),
            autofocus: false,
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.help_outline_rounded,
                    color: Colors.black,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(),
                    child: Text(
                      'Help',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.only(left: 205.0),
                      child: Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
