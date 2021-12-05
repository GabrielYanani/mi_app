// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class list extends StatelessWidget {
  list({Key key}) : super(key: key);

  List<Image> misFotos = [
    Image.asset('assets/januka.jpg'),
    Image.asset('assets/jaim.jpg'),
    Image.asset('assets/tobe.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: misFotos.map((Image image) => Container(height: 100,width: 200,),).toList(),
    );
  }
}
  
  
  
  
  // child: ListView=ListView('assets/misFotos'),