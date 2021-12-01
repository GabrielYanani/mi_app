// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mi_app/mi_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(color: Colors.deepOrangeAccent,
      home: MiApp1(),
    );
  }
}

