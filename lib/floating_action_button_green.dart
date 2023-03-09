import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  late bool indPressed =false;
  void onPressedFav (){
    setState(() {
      indPressed = !indPressed;
       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content:  Text(((indPressed)? "Agregaste a ": "Eliminaste de ") + " favorito"),
            duration:  Duration(seconds: 1),
            action: SnackBarAction(
              label: 'ACTION',
              onPressed: () {
              },
            ),
          ));
    });
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini:  true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        (indPressed)? Icons.favorite : Icons.favorite_border
      ),
    );
  }
}