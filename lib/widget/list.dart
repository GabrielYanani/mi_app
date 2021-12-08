// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class miLista extends StatelessWidget {
  miLista({Key key}) : super(key: key);

  List<Image> misFotos = [
    Image.asset('assets/januka.jpg'),
    Image.asset('assets/jaim.jpg'),
    Image.asset('assets/tobe.jpg'),
    Image.asset('assets/ezra.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5),
        child: ListView(
          padding: EdgeInsets.all(20),
          children: misFotos
              .map(
                (Image image) => image,
              )
              .toList(),
        ));
  }
}
  
  
  
  
  // child: ListView=ListView('assets/misFotos'),