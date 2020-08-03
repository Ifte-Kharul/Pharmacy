import 'package:flutter/material.dart';
import 'package:pharmacy/utilities/constants.dart';
import 'package:pharmacy/utilities/common_button.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xffDF041A),
      body: Center(
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
            //color: Colors.white
            Image(
              image: AssetImage('images/pharm.png'),
            ),

            Text(
              'Pharmacy',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            CommonButton(
              bchild: Text(
                'Login',
                style: KmainPageButtonStyle,
              ),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            CommonButton(
              bchild: Text(
                'SignUp',
                style: KmainPageButtonStyle,
              ),
              onTap: () {
                Navigator.pushNamed(context, '/signUp');
              },
            ),
          ],
        ),
      ),
    ));
  }
}
