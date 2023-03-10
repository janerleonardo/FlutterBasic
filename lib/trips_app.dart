import 'package:firtsappflutter/home_trips.dart';
import 'package:firtsappflutter/map_trips.dart';
import 'package:firtsappflutter/profile_trips.dart';
import 'package:firtsappflutter/search_trips.dart';
import 'package:flutter/material.dart';

import 'notification_trips.dart';

class TripsApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TripsApp();
  }
  
  
}

class _TripsApp extends State<TripsApp> {
  int indexTap = 0;
  final List<Widget> widgetChildren = [
    HomeTrips(),
    SearchTrips(),
    MapTrips(),
    NotificationsTrips(),
    ProfileTrips()


  ];
  void OnTapTapped (int index){

    setState(() {
      indexTap = index;
    });

    }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

       
    return Scaffold(
      body: widgetChildren[indexTap],
      bottomNavigationBar: Theme(data: Theme.of(context).copyWith(
        canvasColor: Colors.white,
        primaryColor: Colors.purple

      ),
        child: BottomNavigationBar(
          currentIndex: indexTap,
          onTap: OnTapTapped ,
          showUnselectedLabels: false,
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
                icon: Icon(Icons.map),
                label: ""
              ),
               BottomNavigationBarItem(
                icon: Icon(Icons.notification_add),
                label: ""
              ),
               BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: ""
              )
          ])),
    );
  }

}


