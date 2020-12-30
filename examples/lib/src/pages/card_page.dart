import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        child: ListView(
          children: <Widget>[
            _cardTipo1(),
            SizedBox(
              height: 20,
            ),
            _cardTipo2(),
            SizedBox(
              height: 20,
            ),
            _cardTipo1(),
            SizedBox(
              height: 20,
            ),
            _cardTipo2(),
          ],
        ),
      ),
    );
  }

  _cardTipo1() {
    return Card(
      elevation: 2.0, //Sombra de la tarjeta
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)), //Bordes redondeados
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.amber,
            ),
            title: Text("Titulo 1"),
            subtitle: Text("Tarjeta 1 y su respectiva descrpicón :v "),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Deny",
                    style: TextStyle(color: Colors.blue[500]),
                  )),
              FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Accept",
                    style: TextStyle(color: Colors.blue[500]),
                  )),
            ],
          )
        ],
      ),
    );
  }

  _cardTipo2() {
    final card = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),

      //clipBehavior: Clip.antiAlias, //Nada de lo que este en la tarjeta se salga del contenido
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                "https://upload.wikimedia.org/wikipedia/commons/8/81/Parque_Eagle_River%2C_Anchorage%2C_Alaska%2C_Estados_Unidos%2C_2017-09-01%2C_DD_02.jpg"),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250,
            fit: BoxFit.cover,
          ),
          Container(padding: EdgeInsets.all(10), child: Text("Example text"))
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: card,
      ), //Cortar lo que se salga del contenedor
    );
  }
}
