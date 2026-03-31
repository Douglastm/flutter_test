import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 176, 102, 189),
          title: Center(child: Text("Nome do meu app")),
        ),
        body: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("Olá, mundo!"), Icon(Icons.add)]),
        ),
      ),
    );
  }
}

class PaginaInicial extends StatefulWidget {
  @override
  State<PaginaInicial> createState() => PaginaInicialState();
}

class PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(texto),
          ElevatedButton(
            child: Text('mudar texto'),
            onPressed: () {
              texto = "texto alterado";
            },
          ),
        ],
      ),
    );
  }
}
