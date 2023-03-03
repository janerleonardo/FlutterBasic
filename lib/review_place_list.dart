import 'package:flutter/material.dart';
import 'review_place.dart';
class ReviewPlaceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          ReviewPlace("assets/img/simon.jpg", "Simon", "1 review 5 photos", "There is amazing  place in Sri Lanka"),
          ReviewPlace("assets/img/andres.jpg", "Andres", "2 review 30 photos", "There are Delicius restants"),
          ReviewPlace("assets/img/carlos.jpg", "Carlos", "3 review 8 photos", "There are a lot of tree "),
        ],  
    );

  }

}