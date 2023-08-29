import 'package:flutter/material.dart';

// Classe Main do App
void main() {
  runApp(MeuApp());
}

// Classe que vai guardar toda a janela do App
class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text('Exercicio 00 - Lista e Graficos'),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white),
      body: Center(child: Exercicio()),
    ));
  }
}

// Classe que vai conter o corpo da aplicação
class Exercicio extends StatelessWidget {
  // lista com as empresas
  final List<String> empresas = [
    'Google',
    'Alibaba',
    'Tencent',
    'BMW',
    'Reflectly',
    'Realtor.com',
    'Nubank'
  ];
  final List<String> imagensEmpresas = [
    'https://logodownload.org/wp-content/uploads/2014/09/google-logo-0-1536x1536.png',
    'https://w7.pngwing.com/pngs/61/458/png-transparent-logo-alibaba-group-scalable-graphics-logo-olshop-text-orange-logo.png',
    'https://w7.pngwing.com/pngs/723/411/png-transparent-tencent-business-technology-otcmkts-tcehy-skydance-media-business-blue-game-company.png'
  ];

  // Construir a Widget (Telinha)
  @override
  Widget build(BuildContext context) {
    // --- Retornar uma ListView
    return ListView.builder(
      // -- definir o tamanho da lista
      itemCount: empresas.length,
      // -- construir cada item da lista
      itemBuilder: (context, index) {
        return ListTile(
          // -- icone
          leading: Icon(Icons.adjust),

          // -- texto
          title: Column(children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(19), // Adicione o espaçamento desejado
              child: Text(
                empresas[index],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
            ),
            Image.network(
              imagensEmpresas[index],
              fit: BoxFit
                  .contain, // Para ajustar o tamanho da imagem ao espaço disponível
              width: 520, // Defina a largura da imagem
              height: 100, // Defina a altura da imagem
            ),
          ]),

          iconColor: Color.fromARGB(255, 30, 31, 34),
        );
      },
    );
  }
}
