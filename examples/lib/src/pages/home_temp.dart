import 'package:examples/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  HomePageTemp({Key key}) : super(key: key);
  final op = ["Uno", "Dos", "Tres"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo"),
      ),
      body: ListView(
        children: _crearItemsConFor(),
      ),
    );
  }

  List<Widget> _crearItemsConFor() {
    //Primer modo
    List<Widget> lista = new List<Widget>();
    for (var x in op) {
      final tempWidget = ListTile(
        title: Text(x),
      );
      //lista.add(tempWidget);
      //lista.add(Divider());
      lista
        ..add(tempWidget)
        ..add(
            Divider()); //Esto hace lo mismo que las dos lineas comentadas antes
    }
    return lista;
  }

  List<Widget> _crearItemsConMap() {
    return op
        .map((e) => Column(
              children: <Widget>[
                ListTile(
                  title: Text(e + "!"),
                  leading: Icon(Icons
                      .access_alarm), //Se escribe al inicio del objeto de la lista
                  trailing: Icon(Icons
                      .arrow_back), //Se escribe al final del objeto de la lista
                  onTap: () => null,
                ),
                Divider()
              ],
            ))
        .toList();
  }
}
