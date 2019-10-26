import 'package:flutter/material.dart';

class CadastrarCompra extends StatefulWidget{
  static String routeName = "cadastrarCompra";
  _CadastrarCompra createState() => new _CadastrarCompra();
}

class _CadastrarCompra extends State<CadastrarCompra>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Cadastrar Compra",
            style: TextStyle(color: new Color(0xFF5C5C5C))),
        backgroundColor: new Color(0xFF0AF9EF),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFF5c5c5c),
            ),
            onPressed: () {
              Navigator.pop(context, true);
            }),
      ),
      body: Container(),
    );
  }
}