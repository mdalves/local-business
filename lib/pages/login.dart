import 'package:flutter/material.dart';
import 'package:local_negocios/pages/registrar.dart';
import 'package:local_negocios/pages/acceder.dart';

class Login extends StatefulWidget{
  static String routeName = "login";
  _Login createState() => new _Login();
}

class _Login extends State<Login>{
  @override
  Widget build(BuildContext context) {
    final logo = Container(
        child: Image.asset("images/localapp.png"),
        height: 100,
        width: 100,
        margin: EdgeInsets.only(top: 50, left: 0, right: 0, bottom: 5));

    final emailButton = Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Container(
          margin: EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
          child: new RaisedButton(
              color: Color(0xFF0AF9EF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: new Container(
                alignment: Alignment.center,
                height: 60.0,
                child: new Text(
                  'Email',
                  style:
                  TextStyle(fontSize: 20.0, color: new Color(0xFF5C5C5C)),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Acceder()));
              }),
        ));

    final googleButton = Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Container(
          margin: EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
          child: new RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: new Container(
                alignment: Alignment.center,
                height: 60.0,
                child: Row(
                  children: <Widget>[
                    Image.asset("images/google.png"),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 70),
                        child: Text(
                          'Google',
                          style: TextStyle(
                              fontSize: 20.0, color: new Color(0xFF5C5C5C)),
                        )),
                  ],
                ),
              ),
              onPressed: () {
                /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Zona()));*/
              }),
        ));

    final facebookButton = Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Container(
          margin: EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
          child: new RaisedButton(
              color: Color(0xFF4460a0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: new Container(
                alignment: Alignment.center,
                height: 60.0,
                child: Row(
                  children: <Widget>[
                    Image.asset("images/facebook.png"),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 55),
                        child: Text(
                          'Facebook',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        )),
                  ],
                ),
              ),
              onPressed: () {
                /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Zona()));*/
              }),
        ));

    final signup = FlatButton(
      child: Text('¿Cómo puedo registrarme?'),
      onPressed: () {
       Navigator.push(
            context, MaterialPageRoute(builder: (context) => Registrar()));
      },
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
              emailButton,
              googleButton,
              facebookButton,
              signup
            ],
          ),
        ));
  }
}