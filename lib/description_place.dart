import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {
    String namePlace;
    int starts;
    String descriptionPlace;
    double top_ = 380.0;

    DescriptionPlace(this.namePlace, this.starts, this.descriptionPlace);


  @override
  Widget build(BuildContext context) {

   
   
    final star_half = Container(
      margin:  EdgeInsets.only(
        top: top_+3.0,
        right: 3.0 
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );
    final star_border = Container(
      margin:  EdgeInsets.only(
        top: top_+3.0,
        right: 3.0 
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );
    
    final star = Container(
      margin:  EdgeInsets.only(
        top: top_+3.0,
        right: 3.0 
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );


    final  title_starts = Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            top:top_,
            left: 20.0,
            right: 20.0
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
        )
        
      ],
    );
    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        right: 20.0,
        left: 20.0
      ),
     child: Text(
      descriptionPlace,
      style: const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color:  Color(0xFF56575a)
      ),
     ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title_starts,
        description,
        ButtonPurple("Navigate")
      ],
    );
  }



}