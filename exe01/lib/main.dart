import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaginaInicial(),
    );
  }
}

var textHeader = Text(
    textAlign: TextAlign.center,
    'Simulador de KASINÃO no Sabadaço',
    style: TextStyle(fontWeight: FontWeight.bold));

var textBody = Text(
    textAlign: TextAlign.center,
    'Sim, lançaram um Simulador de Kasinão no Sabadaço, uma homenagem clara… ao sabadaço. Mais do que isso, ao Kasinão no Sabadaço.',
    style: TextStyle(fontWeight: FontWeight.w600));

var imagemHeader = Image.network(
  'https://pixelnerd.net.br/wp-content/uploads/2020/08/KASSINO_KASSINAO-796x450.jpg',
  height: 500 
);

class PaginaInicial extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: textHeader,
          ),
          backgroundColor: Colors.greenAccent),
      body: Stack(
        alignment: Alignment.center, 
        children: [
          textBody,
          Container(
            margin: EdgeInsetsDirectional.only(bottom: 350.0),
            child: imagemHeader,
          ),
        ]
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        height: 40,
        child: Center(child: Text("© Kasinão no Sabadaço")),
      )),
    );
  }
}
