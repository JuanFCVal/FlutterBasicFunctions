import 'package:examples/src/pages/alert_page.dart';
import 'package:examples/src/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Examples App',
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) {
        print("Ruta llamada: ${settings.name}");
        return MaterialPageRoute(builder: (context) => AlertPage());
      },
    );
  }
}
