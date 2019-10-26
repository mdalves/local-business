import 'package:flutter/material.dart';

class CadastrarPromocion extends StatefulWidget{
  static String routeName = "cadastrarPromocion";
  _CadastrarPromocion createState() => new _CadastrarPromocion();
}

class _CadastrarPromocion extends State<CadastrarPromocion>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Cadastrar Promoción",
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