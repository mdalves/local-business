import 'package:flutter/material.dart';
import 'package:local_negocios/pages/confirmar_descuento_etapa3.dart';

class ConfirmarDescuentoEtapa2 extends StatefulWidget {
  static String routeName = "confirmarDescuentoEtapa2";

  _ConfirmarDescuentoEtapa2 createState() => new _ConfirmarDescuentoEtapa2();
}

class _ConfirmarDescuentoEtapa2 extends State<ConfirmarDescuentoEtapa2> {
  @override
  Widget build(BuildContext context) {
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
          onPressed: () {}),
    );

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
      body:
        nextButton,
    );
  }

  Widget _createEachListItem(
      String imageAvatar,
      String imageAsset,
      String promoTitle,
      String promoText,
      String vendor,
      int promoPoints,
      int userPoints,
      bool fav,
      int id,
      bool expanded,
      String status) {
    return new Card(
      child: new Container(
          padding: EdgeInsets.only(top: 5),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(imageAvatar),
              ),
              new Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    child: new Text(
                      promoTitle,
                      style: TextStyle(fontSize: 13),
                    ),
                    width: MediaQuery.of(context).size.width * 0.7,
                  ),
                  new Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: new Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              vendor,
                              style: TextStyle(fontSize: 11),
                            ),
                            new Container(
                              padding: EdgeInsets.only(top: 2, bottom: 2),
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width * 0.2,
                              color: Colors.cyanAccent,
                              child: Text(
                                promoPoints.toString() + " puntos",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              ),
                            )
                          ])),
                  new Container(
                    padding: EdgeInsets.only(top: 2, bottom: 2),
                    alignment: Alignment.center,
                    child: new Text(
                      'Status:' + status,
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }

  List<Widget> createList() {
    return [
      _createEachListItem(
          "images/avatar1.jpg",
          "",
          "Pizza + Cerveza por la mitad del precio",
          "Super Duper Hashtag ####! O gerente ficou louco! #louco #loucoporpizza #hashtag",
          "Pirucho",
          20,
          20,
          false,
          0,
          false,
          'Ativo'),
      _createEachListItem(
          "images/avatar2.jpg",
          "",
          "Doble Chopp",
          "Beber muito uhul, super duper chopp em dobro!!!!!!!!!!!! #chopp #dobro #chopemdrobro",
          "A Cabina",
          15,
          20,
          false,
          0,
          false,
          'Inativo'),
    ];
  }
}
