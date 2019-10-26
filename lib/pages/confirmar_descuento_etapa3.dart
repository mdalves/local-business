import 'package:flutter/material.dart';

class ConfirmarDescuentoEtapa3 extends StatefulWidget{
  static String routeName = "confirmarDescuentoEtapa3";
  _ConfirmarDescuentoEtapa3 createState() => new _ConfirmarDescuentoEtapa3();
}

class _ConfirmarDescuentoEtapa3 extends State<ConfirmarDescuentoEtapa3>{

  final mobile = Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: new TextFormField(
        keyboardType: TextInputType.phone,
        autofocus: false,
        initialValue: 'Móvil',
        decoration: InputDecoration(
            hintText: 'Móvil',
            contentPadding:
            EdgeInsets.only(right: 10, left: 10, top: 15, bottom: 15),
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
      ));

  final nextButton = Padding(
    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
    child: new RaisedButton(
        color: Color(0xFF0AF9EF),
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: new Container(
          alignment: Alignment.center,
          height: 60.0,
          child: new Text(
            'Siguiente',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        onPressed: () {
          //Navigator.push(
          //    context, MaterialPageRoute(builder: (context) => Principal()));
        }),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Confirmar Descuento",
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
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              mobile,
              nextButton,
              SizedBox(height: 150,)
            ],
          ),
        ));
  }
}