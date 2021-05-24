import 'package:flutter/material.dart';

class AlcoolGasolina extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<AlcoolGasolina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(title: Text("Álcool ou Gasolina"), backgroundColor: Colors.blue),
      body: Column (
        children: [
          Padding(
            padding: EdgeInsets.all(30),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Digite o seu nome",
              )
            )
          ),
        ],
      )
    );
  }
}
