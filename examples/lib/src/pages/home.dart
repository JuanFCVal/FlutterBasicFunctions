import 'package:examples/src/Utils/icon_string_util.dart';
import 'package:examples/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("a"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
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
            //final route = MaterialPageRoute(builder: (context) {
            //return AlertPage();
            //});
            Navigator.pushNamed(context, element['ruta']);
          });

      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}
