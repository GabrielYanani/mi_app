// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mi_app/widget/list.dart';

class MiApp1 extends StatefulWidget {
  const MiApp1({Key key}) : super(key: key);

  @override
  State<MiApp1> createState() => _MiApp1State();
}

class _MiApp1State extends State<MiApp1> {
  Image miFoto = Image.asset('assets/januka.jpg');
  Image miPrimeraFoto = Image.asset('assets/jaim.jpg');
  Image miSegundaFoto = Image.asset('assets/tobe.jpg');

  String text1 = 'Asi festejamos en casa!';
  String text2 = 'Hola! me llamo Jaim';

  List<Image> misFotos = [
    Image.asset('assets/januka.jpg'),
    Image.asset('assets/jaim.jpg'),
    Image.asset('assets/tobe.jpg'),
  ];
  get child => null;

  void _cambiarFotoTexto() {
    setState(() {
      text1 = text2;
      miFoto = miPrimeraFoto;
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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Mis fotos de Januka',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                decorationStyle: TextDecorationStyle.solid,
                decorationColor: Colors.blueAccent,
              ),
            ),
            Expanded(
              child: ListView(
                controller: ScrollController(),
                padding: EdgeInsets.all(20),
                children: misFotos
                    .map(
                      (image) => image,
                    )
                    .toList(),
              ),
            ),
            Expanded(child: MiLista()),
          ],
        ),
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: <Widget>[
        //     Container(
        //       color: Colors.blue,
        //     ),
        //     Text(
        //       text1,
        //       style: TextStyle(
        //         fontSize: 40,
        //         color: Colors.white,
        //         fontStyle: FontStyle.italic,
        //       ),
        //       textAlign: TextAlign.center,
        //     ),
        //      MiLista(),
        //   ],
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: _cambiarFotoTexto,
        //   tooltip: 'CambiarFoto',
        //   child: const Icon(Icons.photo),
        //   backgroundColor: Colors.amber,
        // ),
      ),
    );
  }
}
