import 'package:flutter/material.dart';

final Map _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open
};

Icon getIcon(String nombreIcono) {
  return Icon(_icons[nombreIcono],
      color: Colors
          .black); //Busco en mi map _icon el icono que se llame como el string que recibe el metodo
}