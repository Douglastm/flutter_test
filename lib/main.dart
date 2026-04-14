// import 'dart:ffi';

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

  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardNome("Teste", 20),
            Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.all(32),
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.3,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.purple.shade300, borderRadius: BorderRadius.all(Radius.circular(35))),
              child: Text(texto),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: "Digite algo", border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('mudar texto'),
              onPressed: () {
                setState(() {
                  x++;
                  texto = _controller.text.isEmpty ? "clicou $x vezes" : _controller.text;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CardNome extends StatelessWidget {
  CardNome(this.nome, this.idade, {super.key});
  String nome;
  int idade;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      alignment: Alignment.center,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(color: Colors.green.shade200),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text(nome), Text(idade.toString())]),
    );
  }
}
