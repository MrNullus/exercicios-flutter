import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaginaInicial(),
    );
  }
}

class PaginaInicial extends StatelessWidget {
  final List<String> itens = [
    'Lá ele 1x',
    'Lá ele 2x',
    'Lá ele 3x',
    'Lá ele 4x',
    'Lá ele 5x',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top 5 Lá Eles'),
      ),
      body: ListView.builder(
        itemCount: itens.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(itens[index]),
            leading: Icon(Icons.circle),
          );
        },
      ),
    );
  }
}
