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
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30,
          ),
          _cardTipo2()
        ],
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
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

  Widget _cardTipo2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 5,
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://www.theolivepress.es/wp-content/uploads/2019/02/High-frontier.jpg'),
            fadeInDuration: Duration(milliseconds: 250),
            height: 250,
            fit: BoxFit.cover,
          ),
          Container(
            child: Text('Esto es un texto de una imagen'),
            padding: EdgeInsets.all(10),
          )
        ],
      ),
    );
  }
}
