import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          title: Center(child: Text("nome do meu app")),
        ),
        body: Center(child: PaginaInicial()),
      ),
    );
  }
}

class PaginaInicial extends StatefulWidget {
  @override
  State<PaginaInicial> createState() => PaginaInicialState();
}

class PaginaInicialState extends State<PaginaInicial> {
  String texto = "olá, mundo!";
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(texto),
          ElevatedButton(
            child: Text('mudar texto'),
            onPressed: () {
              setState(() {
                x++;
                texto = "o texto fo alterado $x vezes";
              });
            },
          ),
        ],
      ),
    );
  }
}
