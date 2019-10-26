import 'package:flutter/material.dart';
import 'package:local_negocios/pages/cadastrar_compra.dart';
import 'package:local_negocios/pages/confirmar_descuento.dart';
import 'package:local_negocios/pages/mi_perfil.dart';
import 'package:local_negocios/pages/mis_promociones.dart';
import 'package:local_negocios/pages/cadastrar_promocion.dart';

class Principal extends StatefulWidget{
  static String routeName = "principal";
  _Principal createState() => new _Principal();
}

class _Principal extends State<Principal>{
  @override
  Widget build(BuildContext context) {
    final logo = Container(
        child: Image.asset("images/localapp.png"),
        height: 100,
        width: 100,
        margin: EdgeInsets.only(top: 50, left: 0, right: 0, bottom: 5));

    final confirmarDescuentoButton = Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Container(
          margin: EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
          child: new RaisedButton(
              color: Color(0xFFA0A4FB),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: new Container(
                alignment: Alignment.center,
                height: 60.0,
                child: new Text(
                  'Confirmar Descuento',
                  style:
                  TextStyle(fontSize: 20.0, color: new Color(0xFF5C5C5C)),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ConfirmarDescuento()));
              }),
        ));
    final cadastrarCompraButton = Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Container(
          margin: EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
          child: new RaisedButton(
              color: Color(0xFF27C2F6),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: new Container(
                alignment: Alignment.center,
                height: 60.0,
                child: new Text(
                  'Cadastrar Compra',
                  style:
                  TextStyle(fontSize: 20.0, color: new Color(0xFF5C5C5C)),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CadastrarCompra()));
              }),
        ));







    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Local Negocios App",
              style: TextStyle(color: new Color(0xFF5C5C5C))),
          backgroundColor: new Color(0xFF0AF9EF),
          iconTheme: IconThemeData(color: new Color(0xFF5C5C5C)),
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text("Mariana"),
                accountEmail: new Text("marianadominguezalves@gmail.com"),
                currentAccountPicture: new GestureDetector(
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(
                        "https://i.pinimg.com/280x280_RS/b6/74/9d/b6749df1bf7dbdb519923288f6503adc.jpg"),
                  ),
                ),
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/avatar_background.jpeg"))),
              ),

              new ListTile(
                title: new Text("Mis Perfil"),
                trailing: new Icon(Icons.arrow_right),
                onTap: () => Navigator.popAndPushNamed(context, MiPerfil.routeName),
              ),
              new ListTile(
                title: new Text("Mis Promociones"),
                trailing: new Icon(Icons.arrow_right),
                onTap: () => Navigator.popAndPushNamed(context, MisPromociones.routeName),
              ),
              new ListTile(
                title: new Text("Cadastrar Promoción"),
                trailing: new Icon(Icons.arrow_right),
                onTap: () => Navigator.popAndPushNamed(context, CadastrarPromocion.routeName),
              ),
              new ListTile(
                title: new Text("Cadastrar Compra"),
                trailing: new Icon(Icons.arrow_right),
                onTap: () => Navigator.popAndPushNamed(context, CadastrarCompra.routeName),
              ),
              new ListTile(
                title: new Text("Confirmar Descuento"),
                trailing: new Icon(Icons.arrow_right),
                onTap: () => Navigator.popAndPushNamed(context, ConfirmarDescuento.routeName),
              ),

              new ListTile(
                title: new Text("Configuraciones"),
                trailing: new Icon(Icons.settings),
                onTap: () {},
              )
            ],
          ),
        ),
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
              confirmarDescuentoButton,
              cadastrarCompraButton,
              SizedBox(height: 150,)
            ],
          ),
        ));
  }

}