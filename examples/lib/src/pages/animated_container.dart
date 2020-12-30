import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.amber;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contendor animado"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 20, right: 10),
        child: FloatingActionButton(
          onPressed: () {
            _changeProperties();
          },
          backgroundColor: Colors.blueGrey,
          elevation: 10,
          child: Icon(Icons.play_arrow),
        ),
      ),
    );
  }

  void _changeProperties() {
    //Generando numeros aleatorios
    final random = Random();
    _color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    _height = random.nextInt(300).toDouble();
    _width = random.nextInt(300).toDouble();
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    setState(() {});
  }
}
