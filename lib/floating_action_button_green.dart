import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>  
with AutomaticKeepAliveClientMixin {
  late IconData icon;
   late bool indPressed = false;
    @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
 
   @override
  void initState() {
    super.initState();
    this.icon = Icons.favorite_border;
  }

 
  void onPressedFav (){
    setState(() {
       if(this.icon == Icons.favorite_border) {
        this.icon = Icons.favorite;
        this.indPressed = true;
      } else {
        this.icon = Icons.favorite_border;
        this.indPressed = false;
      }
   
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
        this.icon
      ),
    );
  }
  

}