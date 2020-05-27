import 'dart:convert';

import 'package:detonado_pokemon_live/componentes/myCard.dart';
import 'package:detonado_pokemon_live/model/Jogo.dart';
import 'package:detonado_pokemon_live/service/ApiService.dart';
import 'package:flutter/material.dart';

class SpinOffPage extends StatefulWidget {
  @override
  _SpinOffPageState createState() => _SpinOffPageState();
}

class _SpinOffPageState extends State<SpinOffPage> {

  var data = new List<Jogo>();

  @override
  void initState() {
    super.initState();
    getSpinOff();
  }

  getSpinOff() {
    ApiService.getSpinOff().then((response){
      setState(() {
        Iterable list = json.decode(utf8.decode(response.bodyBytes));
        data = list.map((spinoff) => Jogo.fromJson(spinoff)).toList();
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
