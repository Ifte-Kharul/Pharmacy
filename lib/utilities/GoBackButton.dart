import 'package:flutter/material.dart';
class GoBack extends StatelessWidget {
  final onPressed;
  final lText;
  final colour;
  GoBack({@required this.onPressed,@required this.lText,@required this.colour});
  
  @override
  Widget build(BuildContext context) {
    
    return Container(
        height: 40.0,
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.black, style: BorderStyle.solid, width: 1.0),
              color: colour,
              borderRadius: BorderRadius.circular(20.0)),
          child: InkWell(
            onTap: onPressed,
            child: Center(
              child: Text(lText,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: 'openSans',
                      color: Colors.white)),
            ),
          ),
        ));
  }
}
