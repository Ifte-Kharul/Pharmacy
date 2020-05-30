import 'package:flutter/material.dart';
class CommonButton extends StatelessWidget {
  
  final Function onTap;
  final Widget bchild;
  CommonButton({@required this.bchild,@required this.onTap});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      textColor: Colors.black,
      color: Colors.white,
      elevation: 60,
      child: bchild,
      onPressed: onTap,
      
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(
          color: Colors.white,
          style: BorderStyle.solid,
          width: 10,
        ),
        //focusColor: Colors.brown,
      ),
    );
  }
}