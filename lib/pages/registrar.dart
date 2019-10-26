import 'package:flutter/material.dart';
import 'package:local_negocios/pages/registrar.dart';
import 'package:local_negocios/pages/acceder.dart';

class Registrar extends StatefulWidget{
  static String routeName = "registrar";
  _Registrar createState() => new _Registrar();
}

class _Registrar extends State<Registrar>{
  @override
  Widget build(BuildContext context) {
    final logo = Container(
        child: Image.asset("images/logo_splash.png"),
        height: 100,
        width: 100,
        margin: EdgeInsets.only(top: 50, left: 0, right: 0, bottom: 5));

    final name = Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: new TextFormField(
          autofocus: true,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              hintText: 'Empresa',
              contentPadding:
              EdgeInsets.only(right: 10, left: 10, top: 15, bottom: 15),
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
        ));

    final mobile = Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: new TextFormField(
          autofocus: false,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
              hintText: 'Móvil',
              contentPadding:
              EdgeInsets.only(right: 10, left: 10, top: 15, bottom: 15),
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
        ));

    final user = Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: new TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          decoration: InputDecoration(
              hintText: 'Email',
              contentPadding:
              EdgeInsets.only(right: 10, left: 10, top: 15, bottom: 15),
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
        ));

    final password = Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: new TextFormField(
          autofocus: false,
          obscureText: true,
          decoration: InputDecoration(
              hintText: 'Contraseña',
              contentPadding:
              EdgeInsets.only(right: 10, left: 10, top: 15, bottom: 15),
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
              fillColor: Colors.white),
        ));

    final confirmPassword = Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: new TextFormField(
          autofocus: false,
          obscureText: true,
          decoration: InputDecoration(
              hintText: 'Confirmar contraseña',
              contentPadding:
              EdgeInsets.only(right: 10, left: 10, top: 15, bottom: 15),
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
              fillColor: Colors.white),
        ));

    final loginButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: new RaisedButton(
          color: Color(0xFF0AF9EF),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          child: new Container(
            alignment: Alignment.center,
            height: 60.0,
            child: new Text(
              'Registrarme',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Acceder()));
          }),
    );
    return new Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            Container(
              padding: EdgeInsets.only(left: 150, bottom: 10),
              child: Text('Negocios'),
            ),
            name,
            mobile,
            user,
            password,
            confirmPassword,
            loginButton
          ],
        ),
      ),
    );
  }
}