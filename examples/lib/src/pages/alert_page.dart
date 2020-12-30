import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
      ),
      body: Center(
        child: RaisedButton(
          //Boton central de mostrar alerta
          onPressed: () => _mostrarAlerta(context),
          child: Text("Mostrar alerta"),
          textColor: Colors.white,
          shape: StadiumBorder(),
          color: Colors.blue,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true, //Se cierra la alerta clickando afuera
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Text("Title"),
            content: Column(
              mainAxisSize: MainAxisSize
                  .min, //La columna se adaptara al tamaño del contenido no a toda la pantalla
              children: [
                Text("Contenido de la alerta"),
                FlutterLogo(
                  size: 50,
                )
              ],
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("Cancelar")), //Boton cancelar
              FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("Confirmar")) //Boton confirmar
            ],
          );
        });
  }
}
