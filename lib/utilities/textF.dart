import 'package:flutter/material.dart';
import './constants.dart';
class TextF extends StatelessWidget {
  final lText;
  final bool secureText;
  TextF({this.secureText,@required this.lText});
  @override
  Widget build(BuildContext context) {
    return Container(
                      decoration: kBoxDecorationStyle,
                      child: TextField(                                            
                        decoration: InputDecoration(
                            labelText: lText,
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        obscureText: secureText,
                      ),
                    );
  }
}