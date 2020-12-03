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
          children: _crearItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _crearItems(List<dynamic> data) {
    final List<Widget> opciones = [];
    data.forEach((element) {
      final WidgetTemp = ListTile(
        title: Text(element['texto']),
        leading: Icon(
          Icons.access_time,
          color: Colors.black,
        ),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black),
        onTap: () {},
      );
      opciones..add(WidgetTemp)..add(Divider());
    });
    return opciones;
  }
}
