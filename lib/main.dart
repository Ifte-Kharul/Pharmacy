import 'package:flutter/material.dart';

import './login_page.dart';
import './signUp_page.dart';
import './main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [
        const Locale('en', 'US'), // English
      ],
      home: MainPage(),
      routes: {
        //'/': (context)=>MainPage(),
        '/login': (context) => LoginScreen(),
        '/signUp': (context) => SignupPage(),
      },
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color(0xffDF041A),
        ),
        //canvasColor: KredAccent,
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
