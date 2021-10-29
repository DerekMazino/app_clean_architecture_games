import 'package:flutter/material.dart';
import 'card_image.dart';
class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,//Para hacer que la lista se mueva Horizontal
        children: <Widget>[
          CardImage("assets/img/Horizon0.jpeg"),
          CardImage("assets/img/Horizon1.jpeg"),
          CardImage("assets/img/Horizon2.webp"),
          CardImage("assets/img/Horizon3.jpeg"),
        ],
      ),
    );
  }
}