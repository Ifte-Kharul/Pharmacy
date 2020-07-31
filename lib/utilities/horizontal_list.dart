import 'package:flutter/material.dart';
import 'constants.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Catagories(
            image_caption: 'Medicine',
            image_location: 'assets/logos/pill.png',
          ),
          Catagories(
            image_caption: 'Injection',
            image_location: 'assets/logos/injection.png',
          ),
          Catagories(
            image_caption: 'Mask',
            image_location: 'assets/logos/masks.png',
          ),
          Catagories(
            image_caption: 'Sanitizer',
            image_location: 'assets/logos/hand.png',
          ),
          Catagories(
            image_caption: 'First Aid',
            image_location: 'assets/logos/firstaid.png',
          ),
          Catagories(
            image_caption: 'Tooth Cleaning Kit',
            image_location: 'assets/logos/tooth.png',
          ),
          Catagories(
            image_caption: 'Others',
            image_location: 'assets/logos/thermo.png',
          ),
        ],
      ),
    );
  }
}

class Catagories extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Catagories({this.image_caption, this.image_location});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(2.0),
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 85.0,
            // height: 300.0,
            child: ListTile(
              title: Image.asset(
                image_location,
                height: 35.0,
                // width: 100.0,
              ),
              subtitle: Text(
                image_caption,
                textAlign: TextAlign.center,
                style: TextStyle(color: KredAccent, fontSize: 12.0),
              ),
            ),
          ),
        ));
  }
}
