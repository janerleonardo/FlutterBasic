import 'package:flutter/material.dart';


class ReviewPlace extends StatelessWidget {
  String pathImage = "assets/img/simon.jpg";
  String name = "Jan3r";
  String details = "1 review 5 photos";
  String comment = "There is amazing  place in Sri Lanka";

  ReviewPlace(this.pathImage, this.name,this.details,this.comment);

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
   

   final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0
        ) ,
        ),
   ); 

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Colors.grey
        ) ,
        ),
   ); 

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          fontWeight: FontWeight.w700
        ) ,
        ),
   ); 

   final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userInfo,
        userComment
      ],
   );



   return Row(
    children: [
      photo,
      userDetails
    ],
   );

  }

}
