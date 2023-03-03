import 'package:flutter/material.dart';


class ReviewPlace extends StatelessWidget {
  String pathImage = "assets/img/simon.jpg";

  ReviewPlace(this.pathImage);

  @override
  Widget build(Object context) {

   final photo =  Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
     width: 80.0,
     height: 80.0, 

     decoration: BoxDecoration(
        shape: BoxShape.circle, 
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
     ),
   ) ;
   
   
   return Row(
    children: [

    ],
   );

  }

}
