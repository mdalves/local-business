import 'package:flutter/material.dart';
import 'package:local_negocios/pages/principal.dart';

class Acceder extends StatefulWidget{
  static String routeName = "acceder";
  _Acceder createState() => new _Acceder();
}

class _Acceder extends State<Acceder>{
  @override
  Widget build(BuildContext context) {
    final logo = Container(
        child: Image.asset("images/localapp.png"),
        height: 100,
        width: 100,
        margin: EdgeInsets.only(top: 50, left: 0, right: 0, bottom: 20));

    final user = Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: new TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          initialValue: 'Email',
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
          initialValue: 'Contraseña',
          obscureText: true,
          decoration: InputDecoration(
              hintText: 'Contraseña',
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
              'Acceder',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Principal()));
          }),
    );

    final forgot = FlatButton(
      child: Text('Olvidé mi contraseña'),
      onPressed: () {
        //Navigator.push(
        //    context, MaterialPageRoute(builder: (context) => RecuperarContrasena()));
      },
    );

    final rememberMe = FlatButton(
      child: Text('Remember me'),
      onPressed: () {},
    );

    return new Scaffold(
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[logo, user, password, loginButton, forgot],
          ),
        ));
  }
}