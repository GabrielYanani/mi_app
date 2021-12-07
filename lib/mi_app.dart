// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mi_app/widget/list.dart';

class MiApp1 extends StatefulWidget {
  const MiApp1({Key key}) : super(key: key);

  @override
  State<MiApp1> createState() => _MiApp1State();
}

class _MiApp1State extends State<MiApp1> {
  List<String> misTextos = [
    'Asi festejamos en casa!',
    'Hola! me llamo Jaim',
  ];
  void _cambiarFotoTexto() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'חנוכה שמח!!',
          textDirection: TextDirection.rtl,
          style: TextStyle(fontSize: 40),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      backgroundColor: Colors.cyan,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              misTextos[0],
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                decorationStyle: TextDecorationStyle.solid,
                decorationColor: Colors.blueAccent,
              ),
            ),
            Expanded(child: miLista()),
          ],
        ),
      ),
    );
  }
}
