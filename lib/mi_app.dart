// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class MiApp1 extends StatefulWidget {
  const MiApp1({Key? key}) : super(key: key);

  @override
  State<MiApp1> createState() => _MiApp1State();
}

class _MiApp1State extends State<MiApp1> {
  // List misFotos=[ Image miFoto = Image.asset('assets/januka.jpg',),
  // Image miPrimeraFoto = Image.asset('assets/jaim.jpg'),
  // Image miSegundaFoto = Image.asset('assets/tobe.jpg'),];
  Image miFoto = Image.asset('assets/januka.jpg',);
  Image miPrimeraFoto = Image.asset('assets/jaim.jpg');
  Image miSegundaFoto = Image.asset('assets/tobe.jpg');
// child: new ListView(
//           children: [
//             Image.asset('images/carimg.jpeg',  
//               width: 600.0,
//               height: 240.0,
//               fit: BoxFit.cover,),
//             Image.asset('images/carimg.jpeg',  
//               width: 600.0,
//               height: 240.0,
//               fit: BoxFit.cover,),
//             Image.asset('images/carimg.jpeg',  
//               width: 600.0,
//               height: 240.0,
//               fit: BoxFit.cover,),
//             Image.asset('images/carimg.jpeg',  
//               width: 600.0,
//               height: 240.0,
//               fit: BoxFit.cover,)
//           ],
  get child => null;

  void _mostrarFoto() {
    setState(() {
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
              // child: Text(
              //   'חנוכה שמח!!',
              //   textDirection: TextDirection.rtl,
              //   style: TextStyle(
              //       fontSize: 70,
              //       decoration: TextDecoration.underline,
              //       fontStyle: FontStyle.italic),
              // ),
            ),
            Text(
              'Asi festejamos en casa!',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: miFoto,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _mostrarFoto,
        tooltip: 'CAmbiarFoto',
        child: const Icon(Icons.photo),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
