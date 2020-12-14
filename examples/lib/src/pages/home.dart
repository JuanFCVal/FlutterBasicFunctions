import 'package:examples/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';
import 'package:examples/src/Utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      //Future builder tiene 3 estados, cuando carga, cuando busca y cuando no encuentra es para que el app no parezca trabada cuando obtiene info
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        //Snapshot es la información
        return ListView(
          children: _crearItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _crearItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((element) {
      final widgetTemp = ListTile(
          title: Text(element['texto']),
          leading: getIcon(element["icon"]),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black),
          onTap: () {
            Navigator.pushNamed(context, element['ruta']);
          });
      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}
