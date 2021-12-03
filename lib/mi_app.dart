// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MiApp1 extends StatefulWidget {
  const MiApp1({Key? key}) : super(key: key);

  @override
  State<MiApp1> createState() => _MiApp1State();
}

class _MiApp1State extends State<MiApp1> {
  // List misFotos=[Image.asset('assets/januka.jpg'),
  // Image.asset('assets/jaim.jpg'),
  // Image.asset('assets/tobe.jpg'),];
  Image miFoto = Image.asset('assets/januka.jpg');
  Image miPrimeraFoto = Image.asset('assets/jaim.jpg');
  Image miSegundaFoto = Image.asset('assets/tobe.jpg');

  String text1 = 'Asi festejamos en casa!';
  String text2 = 'Hola! me llamo Jaim';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              color: Colors.blue,
            ),
            Text(
              text1,
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            Expanded(
              // child: ListView=ListView('assets/misFotos'),
              child: miFoto,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _cambiarFotoTexto,
        tooltip: 'CAmbiarFoto',
        child: const Icon(Icons.photo),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
