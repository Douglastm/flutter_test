import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 176, 102, 189),
          title: Center(child: Text("Nome do meu app")),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text("Olá, mundo!"), Text("23/03/2026")]),
        ),
      ),
    ),
  );
}
