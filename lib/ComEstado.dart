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
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset('assets/images/foto.jpg')),
              accountName: Text('Lukas'),
              accountEmail: Text('lukas109@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Início'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/ComEstado');
              },
            ),
            ListTile(
              leading: Icon(Icons.add_business),
              title: Text('Cadastrar Frete'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/cadfrete');
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Sair'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Roda Bem"),
        actions: [
          MeuSwitcher(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Publicação: $cont'),
            MeuSwitcher(),
            Text('Contador: $cont'),
            MeuSwitcher(),
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              cont++;
            });
          },
        )*/
    );
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
