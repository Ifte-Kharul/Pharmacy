import 'package:flutter/material.dart';
import './constants.dart';

class InkDrawer extends StatelessWidget {
  InkDrawer({this.onPress, this.text, this.logo, this.colour});
  final Text text;
  final Function onPress;
  final IconData logo;
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: ListTile(
        title: text,
        leading: Icon(
          logo,
          color: (colour == null) ? KredAccent : colour,
        ),
      ),
    );
  }
}
