import 'package:flutter/material.dart';
import './pages/acceder.dart';
import './pages/login.dart';
import './pages/cadastrar_compra.dart';
import './pages/cadastrar_promocion.dart';
import './pages/confirmar_descuento.dart';
import './pages/principal.dart';
import './pages/registrar.dart';
import './pages/promocion.dart';
import './pages/mi_perfil.dart';
import './pages/mis_promociones.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  var routes = <String, WidgetBuilder>{
    Acceder.routeName: (BuildContext context) => new Acceder(),
    Login.routeName: (BuildContext context) => new Login(),
    CadastrarCompra.routeName: (BuildContext context) => new CadastrarCompra(),
    CadastrarPromocion.routeName: (BuildContext context) => new CadastrarPromocion(),
    ConfirmarDescuento.routeName: (BuildContext context) => new ConfirmarDescuento(),
    Principal.routeName: (BuildContext context) => new Principal(),
    Registrar.routeName: (BuildContext context) => new Registrar(),
    Promocion.routeName: (BuildContext context) => new Promocion(),
    MiPerfil.routeName: (BuildContext context) => new MiPerfil(),
    MisPromociones.routeName: (BuildContext context) => new MisPromociones(),

  };

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(  theme: ThemeData(
        textTheme: Theme
            .of(context)
            .textTheme
            .copyWith(
            headline: Theme
                .of(context)
                .textTheme
                .headline
                .apply(color: Color(0xFFf4f4f4)))), home: new Login(), routes: routes);
  }
}
