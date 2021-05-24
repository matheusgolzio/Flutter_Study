import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStateFul(),
  ));
}


class HomeStateFul extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomeStateFul> {
  List _frases = [" “O sucesso nasce do querer, da determinação e persistência em se chegar a um objetivo. Mesmo não atingindo o alvo, quem busca e vence obstáculos, no mínimo fará coisas admiráveis” – José de Alencar", " “Se você quer ser bem-sucedido precisa de dedicação total, buscar seu último limite e dar o melhor de si mesmo” – Ayrton Senna", "“Não crie limites para si mesmo. Você deve ir tão longe quanto sua mente permitir. O que você mais quer pode ser conquistado” – Mary Kay Ash", "“Nenhum obstáculo será grande se a sua vontade de vencer for maior” – Autor desconhecido", " “Dificuldades preparam pessoas comuns para destinos extraordinários” C.S Lewis", " “Nenhum homem será um grande líder se quiser fazer tudo sozinho ou se quiser levar todo o crédito por fazer isso” – Andrew Carnegie"];

  var _frase = "Clique no botão abaixo para gerar uma frase!";

  var random = new Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(title: Text("Frases do dia"), backgroundColor: Colors.green),
      body: Padding(
          padding: EdgeInsets.all(30),
          child: Column (
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("images/logo.png", fit: BoxFit.cover),
              Text(
                "$_frase",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 22,
                  fontStyle: FontStyle.italic
                )
              ),
              RaisedButton(
                color: Colors.green,
                onPressed: (){
                  setState (() {
                    _frase = _frases[random.nextInt(_frases.length)];
                  });
                },

                child: Text(
                  "Gerar Frase",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )
                ),
              ),
            ],
          )
        )
      );
  }
}
