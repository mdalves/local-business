import 'package:flutter/material.dart';

class Promocion extends StatefulWidget{
  static String routeName = "promocion";
  _Promocion createState() => new _Promocion();
}

class _Promocion extends State<Promocion>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Promoción",
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