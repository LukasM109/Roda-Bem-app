import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastroFrete extends StatefulWidget {
  //const CadastroFrete({ key }) : super(key: key);

  @override
  _CadastroFreteState createState() => _CadastroFreteState();
}

class _CadastroFreteState extends State<CadastroFrete> {
  String nome = '';
  String tituloanuncio = '';
  String tipocaminhao = '';
  String origem = '';
  String destino = '';
  String tipocarga = '';
  String tipofrete = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 20,
                  height: 20,
                ),
                TextField(
                  onChanged: (text) {
                    nome = text;
                  },
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  onChanged: (text) {
                    tituloanuncio = text;
                  },
                  decoration: InputDecoration(
                    labelText: 'Título do Anúncio',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  onChanged: (text) {
                    tipocaminhao = text;
                  },
                  decoration: InputDecoration(
                    labelText: 'Tipo do Caminhão',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  onChanged: (text) {
                    origem = text;
                  },
                  decoration: InputDecoration(
                    labelText: 'Origem',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  onChanged: (text) {
                    destino = text;
                  },
                  decoration: InputDecoration(
                    labelText: 'Destino',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  onChanged: (text) {
                    tipocarga = text;
                  },
                  decoration: InputDecoration(
                    labelText: 'Tipo de Carga',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  onChanged: (text) {
                    tipofrete = text;
                  },
                  decoration: InputDecoration(
                    labelText: 'Tipo de Frete',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () {
                      if (nome != '' &&
                          tituloanuncio != '' &&
                          tipocaminhao != '' &&
                          origem != '' &&
                          destino != '' &&
                          tipocarga != '' &&
                          tipofrete != '') {
                        Navigator.of(context)
                            .pushReplacementNamed('/ComEstado');
                      }
                    },
                    child: Text('Cadastrar'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
