// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MiApp1 extends StatefulWidget {
  const MiApp1({Key key}) : super(key: key);

  @override
  State<MiApp1> createState() => _MiApp1State();
}

class _MiApp1State extends State<MiApp1> {
  List<Image> misFotos = [
    Image.asset('assets/januka.jpg'),
    Image.asset('assets/jaim.jpg'),
    Image.asset('assets/tobe.jpg'),
    Image.asset('assets/ezra.jpg'),
  ];

  List<String> misTextos = [
    'Asi festejamos en casa',
    'hola! me llamo Jaim',
    'Hola! yo soy Tobe',
    'Hola! yo me llamo Ezra!!',
  ];
  int y = 0;
  int i = 0;

  _cambiarFotoTexto() {
    setState(() {
      if (y < misTextos.length) {
        (misFotos[y]);
        y++;
        if (y == misTextos.length) y = 0;
      }

      if (i < misFotos.length) {
        (misFotos[i]);
        i++;
        if (i == misFotos.length) i = 0;
      }
    });
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Center(
            child: Text(
              misTextos[y],
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: misFotos[i],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _cambiarFotoTexto,
        tooltip: 'CmbiarFotoTexto',
        child: const Icon(Icons.photo),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
