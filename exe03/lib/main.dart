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
  final TextEditingController _nomeCartaoController = TextEditingController();
  final TextEditingController _numeroCartaoController = TextEditingController();
  final TextEditingController _dataValidadeController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Relogio do Bento 10'),
        backgroundColor: Colors.green[500],
      ),
      body: 
      Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bem.jpg'),
              fit: BoxFit.fill,
            ),
          ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _nomeCartaoController,
              decoration: InputDecoration(labelText: 'Nome do Cartão'),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _numeroCartaoController,
              decoration: InputDecoration(labelText: 'Número do Cartão'),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _dataValidadeController,
              decoration: InputDecoration(labelText: 'Data Validade'),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _cvvController,
              decoration: InputDecoration(labelText: 'CVV'),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'E-mail'),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Lógica para processar o formulário
                String nomeCartao = _nomeCartaoController.text;
                String numeroCartao = _numeroCartaoController.text;
                String dataValidade = _dataValidadeController.text;
                String cvv = _cvvController.text;
                String email = _emailController.text;
                
                print('Nome do Cartão: $nomeCartao');
                print('Número do Cartão: $numeroCartao');
                print('Data Validade: $dataValidade');
                print('CVV: $cvv');
                print('E-mail: $email');
              },
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    ));
  }
}