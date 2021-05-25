import 'package:flutter/material.dart';

class AlcoolGasolina extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<AlcoolGasolina> {
  var _resultado = "Resultado";

  TextEditingController _controllergasolina = TextEditingController();
  TextEditingController _controlleralcool = TextEditingController();

  void calcular() {
    double precoAlcool = double.parse(_controlleralcool.text);
    double precoGaso = double.parse(_controllergasolina.text);

    if (precoAlcool > precoGaso) {
      setState(() {
        _resultado = "É melhor abastecer o seu carro com álcool.";
      });
    } else if (precoGaso > precoAlcool) {
      setState(() {
        _resultado = "É melhor abastecer o seu carro com gasolina.";
      });
    } else if (precoGaso == precoAlcool) {
      setState(() {
        _resultado = "Não há combustível melhor, os dois tem o mesmo preço.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(title: Text("Álcool ou Gasolina"), backgroundColor: Colors.blue),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/logo.png"),
            Padding (
              padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
              child: Text(
                "Saiba qual é o melhor combustível para o abastecimento do seu carro!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Preço Álcool",
              ),
              controller: _controllergasolina,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Preço Gasolina",
              ),
              controller: _controlleralcool,
            ),
            Padding (
              padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
              child: RaisedButton(
                onPressed: calcular,
                child: Text(
                  "Calcular", 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
                color: Colors.blue,
                padding: EdgeInsets.all(15),
              ),
            ),
            Text(
              "$_resultado",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 20,
                color: Colors.black,
              )
            )
,         ],
        )
      )
    );
  }
}
