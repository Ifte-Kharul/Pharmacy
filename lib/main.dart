import 'package:flutter/material.dart';
import 'package:pharmacy/homepage.dart';

import 'package:pharmacy/pages/login_page.dart';
import 'package:pharmacy/pages/signUp_page.dart';
import 'package:pharmacy/pages/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: [
        const Locale('en', 'US'), // English
      ],
      home: MainPage(),
      routes: {
        //'/': (context)=>MainPage(),
        '/login': (context) => LoginScreen(),
        '/signUp': (context) => SignupPage(),
        '/homepage': (context) => HomePage(),
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
