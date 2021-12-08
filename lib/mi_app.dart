// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mi_app/pagina_1.dart';

class MiApp1 extends StatefulWidget {
  const MiApp1({Key key}) : super(key: key);

  @override
  State<MiApp1> createState() => _MiApp1State();
}

class _MiApp1State extends State<MiApp1> {
  List<dynamic> misFotos = [
    Image.asset('assets/januka.jpg'),
    Image.asset('assets/jaim.jpg'),
    Image.asset('assets/tobe.jpg'),
    Image.asset('assets/ezra.jpg'),
  ];

  List<String> misTextos = [
    'Asi es nuestra Januka',
    'hola! me llamo Jaim',
    'Hola! yo soy Tobe',
    'Hola! yo me llamo Ezra!!',
  ];

  int textos = 0;
  int fotos = 0;

  _cambiarFotoTexto() {
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
        floatingActionButton: Row(
          children: [
            FloatingActionButton(heroTag: '1',
              onPressed: _cambiarFotoTexto,
              tooltip: 'CmbiarFotoTexto',
              child: const Icon(
                Icons.photo,
                size: 30,
              ),
              backgroundColor: Colors.amber,
            ),SizedBox(height: 10,width: 5,),
            FloatingActionButton(heroTag: '2',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>Pagina1(),
                    ),);
              },
              tooltip: 'cambio de pagina',
              child: const Icon(
                Icons.last_page,
                size: 30,
              ),
              backgroundColor: Colors.blue.shade800,
            ),
          ],
        ));
  }
}
