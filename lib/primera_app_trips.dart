import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';
class GameTrips extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _GameTrips();
  }
}

class _GameTrips extends State<GameTrips>{
  int indexTap = 0;
    final List<Widget>widgetsChildren = [
      HomeTrips(),
      SearchTrips(),
      ProfileTrips()
    ];
    void onTapTapped(int index){
      setState((){
        indexTap = index;
        //print(indexTap);
      });
    }
  @override
  Widget build(BuildContext context){
  
    return Scaffold(
      body: widgetsChildren[indexTap],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ""
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: ""
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: ""
              ),
            ],
          ),
        ),
      );
  }
}