import 'package:flutter/material.dart';

import 'ComEstado.dart';
import 'Tema.dart';

class Home extends StatelessWidget {
  final String title;

  const Home({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: Tema.intance,
        builder: (context, child) {
          return MaterialApp(
              home: ComEstado(),
              theme: ThemeData(
                brightness: Tema.intance.isThemeDark
                    ? Brightness.dark
                    : Brightness.light,
              ));
        });
  }
}
