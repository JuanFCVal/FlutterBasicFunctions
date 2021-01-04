import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  const InputsPage({Key key}) : super(key: key);

  @override
  _InputsPageState createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  String _name = '';
  String _email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs"),
      ),
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 10, right: 20, left: 20),
            child: _crearInput(),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 10, right: 20, left: 20),
            child: _crearEmail(),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 10, right: 20, left: 20),
            child: _crearPassword(),
          ),
          _crearPersona()
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      //TextFild para independiente, TextForm para formularios}
      //autofocus: true, //Sale el teclado automaticamente
      textCapitalization:
          TextCapitalization.words, //Primera letra capital por cada palabraR
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20), //Borde de la caja de texto
          ),
          counter: Text("Letras ${_name.length}"), //Contador de caracteres
          hintText: 'Nombre de la persona ', //Texto de ejemplo
          labelText: 'Nombre', //Label
          helperText: "Solo nombre", //Ayuda adicional,
          suffixIcon:
              Icon(Icons.access_alarm), //Aparece dentro del input al final
          icon: Icon(Icons
              .access_time) //Aparece dentro del input a la izquierda al inicio
          ),
      onChanged: (value) {
        _name = value;
        setState(() {});
      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre es: $_name \n y su email es :$_email'),
    );
  }

  _crearEmail() {
    return TextField(
      keyboardType:
          TextInputType.emailAddress, //Permite  agregar un arroba en el tecado
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20), //Borde de la caja de texto
        ),
        hintText: 'Email de la persona ', //Texto de ejemplo
        labelText: 'Email', //Label
        suffixIcon:
            Icon(Icons.alternate_email), //Aparece dentro del input al final
      ),
      onChanged: (value) {
        _email = value;
        setState(() {});
      },
    );
  }

  _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20), //Borde de la caja de texto
        ),
        hintText: 'Password', //Texto de ejemplo
        labelText: 'Password', //Label
        suffixIcon: Icon(Icons.security), //Aparece dentro del input al final
      ),
    );
  }
}
