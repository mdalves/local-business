import 'package:flutter/material.dart';

class MiPerfil extends StatefulWidget{
  static String routeName = "miPerfil";
  _MiPerfil createState() => new _MiPerfil();
}

class _MiPerfil extends State<MiPerfil>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Mi Pefil",
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