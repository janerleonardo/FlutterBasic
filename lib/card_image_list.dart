import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/img/Image1.jpg"),
          CardImage("assets/img/Imagen2.jpg"),
          CardImage("assets/img/Imagen3.jpg"),
          CardImage("assets/img/Imagen4.jpg"),
          CardImage("assets/img/Imagen5.jpg"),
          CardImage("assets/img/Imagen6.jpg"),
        ],
      ),
    );
  }

}