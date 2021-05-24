import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Jogo> {
  List _appoptions = ["pedra", "papel", "tesoura"];
  var random = Random();
  var _status = "Escolha uma das opções!";
  var _appchoice = "padrao";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("JokenPo"), backgroundColor: Colors.blue),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Text(
          "Escolha do App:",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.justify,
        ),
        Image.asset("images/$_appchoice.png", width: 100, height: 100,),
        Text(
          "$_status",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.justify,
        ),
        Row (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () { 
                setState (() {
                  _appchoice = _appoptions[random.nextInt(_appoptions.length)];
                  if (_appchoice == "tesoura") {
                    _status = "Você venceu!";
                  } else if (_appchoice == "pedra") {
                    _status = "Empate";
                  } else {
                    _status = "Você perdeu :(";
                  }
                });
              },
              child: Image.asset("images/pedra.png", width: 100, height: 100,),
            ),
            GestureDetector(
              onTap: () {
                setState (() {
                  _appchoice = _appoptions[random.nextInt(_appoptions.length)];
                  if (_appchoice == "pedra") {
                    _status = "Você venceu!";
                  } else if (_appchoice == "papel") {
                    _status = "Empate";
                  } else {
                    _status = "Você perdeu :(";
                  }
                });
              },
              child: Image.asset("images/papel.png", width: 100, height: 100,),
            ),
            GestureDetector(
              onTap: () {
                setState (() {
                  _appchoice = _appoptions[random.nextInt(_appoptions.length)];
                  if (_appchoice == "papel") {
                    _status = "Você venceu!";
                  }  else if (_appchoice == "tesoura") {
                    _status = "Empate";
                  } else {
                    _status = "Você perdeu :(";
                  }
                });
              },
              child: Image.asset("images/tesoura.png", width: 100, height: 100,),
            ),
          ],
        )
      ],
      ),
    );
  }
}
