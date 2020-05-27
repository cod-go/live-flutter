import 'dart:convert';

import 'package:detonado_pokemon_live/componentes/myCard.dart';
import 'package:detonado_pokemon_live/model/Jogo.dart';
import 'package:detonado_pokemon_live/service/ApiService.dart';
import 'package:flutter/material.dart';

class DetonadoPage extends StatefulWidget {
  @override
  _DetonadoPageState createState() => _DetonadoPageState();
}

class _DetonadoPageState extends State<DetonadoPage> {

  var data = new List<Jogo>();

  @override
  void initState() {
    super.initState();
    getDetonado();
  }

  getDetonado() {
    ApiService.getDetonado().then((response) {
      setState(() {
        Iterable list = json.decode(utf8.decode(response.bodyBytes));
        data = list.map((detonado) => Jogo.fromJson(detonado)).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(24.0),
        children: List.generate(data.length , (index){
          return Center(
            child: MyCard(jogo: data[index]),
          );
        })
      )
    );
  }
}
