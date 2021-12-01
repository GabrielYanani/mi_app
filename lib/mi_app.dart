// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class MiApp1 extends StatefulWidget {
  const MiApp1({Key? key}) : super(key: key);

  @override
  State<MiApp1> createState() => _MiApp1State();
}

class _MiApp1State extends State<MiApp1> {
  int _counter = 0;

  get child => null;

  void _mostrarFoto() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BIENVENIDOS A MI"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      backgroundColor: Colors.cyan,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              color: Colors.red,
              child: Text(
                'חנוכה שמח!!',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontSize: 70,
                    decoration: TextDecoration.underline,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Text('Asi festejamos en casa!',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                )),
            Image.network(
              "https://photos.google.com/photo/AF1QipNQRhuQ-CYyRAWjGMU8xlVz2lh5N96g99OQxgU2",
              scale: 1.0,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _mostrarFoto,
        tooltip: 'Increment',
        child: const Icon(Icons.photo),
      ),
    );
  }
}
