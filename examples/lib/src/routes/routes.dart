import 'package:examples/src/pages/Inputs_page.dart';
import 'package:examples/src/pages/alert_page.dart';
import 'package:examples/src/pages/animated_container.dart';
import 'package:examples/src/pages/avatar_page.dart';
import 'package:examples/src/pages/card_page.dart';
import 'package:examples/src/pages/home.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputsPage()
  };
}
