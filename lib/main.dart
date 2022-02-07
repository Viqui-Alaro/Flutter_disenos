import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hola Mundo'),
          Text('Hola MUndo'),
        ],

      )
    );
  }
}