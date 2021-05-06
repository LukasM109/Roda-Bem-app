import 'package:flutter/material.dart';

import 'Tema.dart';

class ComEstado extends StatefulWidget {
  @override
  State<ComEstado> createState() {
    return Estado();
  }
}

class Estado extends State<ComEstado> {
  int cont = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Roda Bem"),
          actions: [
            MeuSwitcher(),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Contador: $cont'),
              MeuSwitcher(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              cont++;
            });
          },
        ));
  }
}

class MeuSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: Tema.intance.isThemeDark,
      onChanged: (value) {
        Tema.intance.chargeTheme();
      },
    );
  }
}
