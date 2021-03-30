import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        children: <Widget>[_cardTipo1()],
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el título de esta tarjeta'),
            subtitle: Text(
                'Esta es la descripción rematadamente larga para ejemplificar el ejemplo ejemplificado de la tarjeta con descripción descriptiva larga. Eso.'),
          ),
          Row(
            children: [
              TextButton(onPressed: () {}, child: Text('Ok')),
              TextButton(onPressed: () {}, child: Text('Cancelar')),
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          )
        ],
      ),
    );
  }
}
