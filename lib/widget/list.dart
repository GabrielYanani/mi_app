// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class MiLista extends StatefulWidget {
  MiLista({Key key}) : super(key: key);

  @override
  State<MiLista> createState() => _MiListaState();
}

class _MiListaState extends State<MiLista> {
  List<Image> misFotos = [
    Image.asset('assets/januka.jpg'),
    Image.asset('assets/jaim.jpg'),
    Image.asset('assets/tobe.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
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