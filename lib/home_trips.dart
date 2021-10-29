import 'package:flutter/material.dart';
import 'package:primera_app/description_place.dart';
import 'review_list.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{
  String descriptionDummy = '''La historia de Horizon Zero Dawn se proyecta en el planeta Tierra aproximadamente 1000 años en el futuro, más precisamente al año 3040, en un escenario post-apocalíptico donde los seres humanos han vuelto a la época de las sociedades tribales primitivas como resultado de una catástrofe desconocida. \n\nCon el paso del tiempo, estas tribus adoptaron diferentes costumbres, tradiciones, intereses y creencias. Las tres tribus más conocidas en el mundo de Horizon Zero Dawn son: Los Nora, Los Carja y Los Oseram. Ahora la especie dominante en el planeta son una raza de máquinas avanzadas. Aunque las tribus coexisten con ellas, muchos de sus habitantes cazan a estas máquinas y utilizan sus piezas como recursos valiosos ya sea para el comercio o desarrollo. Pero con el paso de los años, estas máquinas se reprodujeron muy rápido, haciéndose más grandes y poderosas, y amenazando la vida de los habitantes primitivos.\n\nAloy, una joven guerrera de la tribu de los Nora, debe explorar el mundo que conoce para averiguar más detalles de la catástrofe que destruyó al planeta en el pasado y evitar que el ciclo se repita en el futuro.''';
  String title = "Popular";
  String principal = '''Horizon: 
Zero Down''';
  @override
  Widget build(BuildContext context){
    return Stack(//Colocar un elemento sobre otro
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace(principal, 4, descriptionDummy),
                ReviewList()
              ],
            ),
            HeaderAppBar()
          ],
        );
  }
  
}