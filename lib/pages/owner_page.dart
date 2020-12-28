import 'package:flutter/material.dart';
import './setting_page.dart';

String name;
String email;

class Info {
  Info(String nam, String mail) {
    name = nam;
    email = mail;
  }
}

class OwnerPage extends StatefulWidget {
  @override
  _OwnerPageState createState() => _OwnerPageState();
}

void handleClick(String choice, BuildContext context) {
  switch (choice) {
    case 'Logout':
      print('User Logout');
      break;
    case 'Settings':
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SettingPage()),
      );
  }
}

class _OwnerPageState extends State<OwnerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            Flexible(
              child: FractionallySizedBox(
                //alignment: Alignment.center,
                heightFactor: 0.8,
                widthFactor: 1.0,
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white)),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              alignment: Alignment.centerLeft,
                              color: Colors.white,
                              child: Icon(
                                Icons.chevron_left,
                                size: 40,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 280),
                            child: PopupMenuButton<String>(
                              onSelected: (choice) =>
                                  handleClick(choice, context),
                              itemBuilder: (BuildContext context) {
                                return {'Logout', 'Settings'}
                                    .map((String choice) {
                                  return PopupMenuItem<String>(
                                    value: choice,
                                    child: Text(choice),
                                  );
                                }).toList();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.red,
                      child: Align(
                        alignment: Alignment.center,
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: UserAccountsDrawerHeader(
                          accountName: Text(
                            '$name',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          accountEmail: Text(
                            '$email',
                            style: TextStyle(
                                fontSize: 15, fontStyle: FontStyle.italic),
                          ),
                          currentAccountPicture: GestureDetector(
                            onTap: () {
                              print('Owner\'s Photo');
                            },
                            child: Container(
                              child: CircleAvatar(
                                backgroundColor: Colors.black45,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(left: 10.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    blurRadius: 7,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.lock,
                        size: 20,
                        color: Colors.black,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Text(
                        '***********',
                        style: TextStyle(
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 7,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                onPressed: () {
                  print('Changing password');
                },
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      color: Colors.white,
                      child: Icon(
                        Icons.lock,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5.0),
                      alignment: Alignment.centerLeft,
                      color: Colors.white,
                      child: Text(
                        'Change password',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 7,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                onPressed: () {
                  print('Order\'s list');
                },
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      color: Colors.white,
                      child: Icon(
                        Icons.shopping_cart,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5.0),
                      alignment: Alignment.centerLeft,
                      color: Colors.white,
                      child: Text(
                        'See order\'s history',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 120.0),
                      child: Icon(
                        Icons.chevron_right,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 7,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                onPressed: () {
                  print('History Cleared');
                },
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      color: Colors.white,
                      child: Icon(
                        Icons.history,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5.0),
                      alignment: Alignment.centerLeft,
                      color: Colors.white,
                      child: Text(
                        'Clear order history',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 7,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                onPressed: () {
                  print('Update check');
                },
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      color: Colors.white,
                      child: Icon(
                        Icons.system_update,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5.0),
                      alignment: Alignment.centerLeft,
                      color: Colors.white,
                      child: Text(
                        'Check for update',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
