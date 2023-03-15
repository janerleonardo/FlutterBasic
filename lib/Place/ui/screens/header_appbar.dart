import 'package:flutter/material.dart';
import 'package:firtsappflutter/widgets/gradient_back.dart';
import 'package:firtsappflutter/Place/ui/widgets/card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBack("Bienvenido"),
        CardImageList()
      ],
    );
  }

}