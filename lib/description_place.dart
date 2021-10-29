import 'package:flutter/material.dart';
import 'button_purple.dart';
class DescriptionPlace extends StatelessWidget{
  String namePlace;
  int stars;
  String descriptionPlace;

  //Constructor
  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context){

    final star_half = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Colors.amber,
      ),
    );
    final star_border = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.amber,
      ),
    );
    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        right: 20.0,
        left: 20.0
      ),
      child: new Text(
        descriptionPlace,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.grey//Probar
        ),
      ),
    );
    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );
    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(//Generar un margen más especifico
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [
            star,
            star,
            star,
            star,
            star_border
          ],
        ),
      ]
    );
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title_stars,
        description,
        ButtonPurple('Navigate')
      ],
    );
  }
}
