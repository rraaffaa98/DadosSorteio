import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dados'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatefulWidget {
  @override
  _DadoosState createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  int numerdoDadoEsquerdo = 1;
  int numerodoDadoDireito = 1;
  void gerarDadoAleatorio() {
    setState(() {
      numerdoDadoEsquerdo = Random().nextInt(6) + 1;
      numerodoDadoDireito = Random().nextInt(6) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                gerarDadoAleatorio();
              },
              child: Image.asset('imagens/dado$numerdoDadoEsquerdo.png'),
            ),
          ),
          Expanded(
            //preenchimento

            child: TextButton(
              onPressed: () {
                gerarDadoAleatorio();
              },
              child: Image.asset('imagens/dado$numerodoDadoDireito.png'),
            ),
          ),
        ],
      ),
    );
  }
}
