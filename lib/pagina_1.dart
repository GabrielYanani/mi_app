// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Pagina1 extends StatefulWidget {
  const Pagina1({Key key}) : super(key: key);

  @override
  State<Pagina1> createState() => _Pagina1State();
}

class _Pagina1State extends State<Pagina1> {
  List<dynamic> misFotos = [
    Image.asset('assets/januka.jpg'),
    Image.asset('assets/jaim.jpg'),
    Image.asset('assets/tobe.jpg'),
  ];

  List<String> misTextos = [
    'Asi es nuestra Januka',
    'hola! me llamo Jaim',
    'Hola! yo soy Tobe',
    'Hola! yo me llamo Ezra!!',
  ];

  int textos = 0;
  int fotos = 0;

  _cambiarFotoTexto2() {
    setState(() {
      if (textos < misTextos.length) {
        (misFotos[textos]);
        textos++;
        if (textos == misTextos.length) textos = 0;
      }

      if (fotos < misFotos.length) {
        (misFotos[fotos]);
        fotos++;
        if (fotos == misFotos.length) fotos = 0;
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
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      backgroundColor: Colors.cyan,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            misTextos[textos],
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: Center(
              child: Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(10),
                child: misFotos[fotos],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: _cambiarFotoTexto2,
        tooltip: 'CmbiarFotoTexto',
        child: const Icon(Icons.photo),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
