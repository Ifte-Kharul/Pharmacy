import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Payment Options'),
        ),
        body: ListView(
          children: [
            PaymentButton(
              path: 'assets/logos/Bkash.png',
              text: 'Bkash',
            ),
            PaymentButton(
              path: 'assets/logos/surecash.png',
              text: 'SureCash',
            ),
            PaymentButton(
              path: 'assets/logos/rocket.png',
              text: 'Rocket',
            ),
            PaymentButton(
              path: 'assets/logos/card.jpg',
              text: 'Payment on Card',
            ),
            PaymentButton(
              path: 'assets/logos/cod.png',
              text: 'Cash on Delivery',
            ),
          ],
        ));
  }
}

class PaymentButton extends StatelessWidget {
  final String text;
  final String path;
  PaymentButton({this.path, this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          print("payment ");
        },
        child: Card(
          color: Colors.grey[100],
          elevation: 10.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                path,
                width: 100.0,
                height: 100.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
