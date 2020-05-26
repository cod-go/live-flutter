import 'package:detonado_pokemon_live/componentes/myAppBar.dart';
import 'package:detonado_pokemon_live/page/detonadosPage.dart';
import 'package:detonado_pokemon_live/page/spinOff.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<BottomNavigationBarItem> itens;
  int pageSelecionada = 0;
  final paginas = [
    DetonadoPage(),
    SpinOffPage()
  ];

  @override
  void initState() {
    super.initState();
    itens = new List();
    itens.add(new BottomNavigationBarItem(icon: new Icon(Icons.videogame_asset), title: new Text('Jogos')));
    itens.add(new BottomNavigationBarItem(icon: new Icon(Icons.star), title: new Text('Spin Offs')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: paginas[pageSelecionada],
      bottomNavigationBar: BottomNavigationBar(
        items: itens,
        fixedColor: Colors.white,
        onTap: (int i) {
          setState(() {
            pageSelecionada = i;
          });
        },
      ),
    );
  }
}
