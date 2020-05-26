import 'package:detonado_pokemon_live/page/detonadosPage.dart';
import 'package:detonado_pokemon_live/page/homePage.dart';
import 'package:detonado_pokemon_live/page/spinOff.dart';
import 'package:detonado_pokemon_live/page/splashPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rotas {

  static Route<dynamic> gerarRotas(RouteSettings settings){
    switch(settings.name){
      case '/':
        return MaterialPageRoute(
          builder: (_) => SplashPage()
        );
      case '/home':
        return MaterialPageRoute(
            builder: (_) => HomePage()
        );
      case '/detonado':
        return MaterialPageRoute(
            builder: (_) => DetonadoPage()
        );
      case '/spinoff':
        return MaterialPageRoute(
            builder: (_) => SpinOffPage()
        );
      default : erroRota();
    }
  }

  static Route<dynamic> erroRota() {
    return MaterialPageRoute(
        builder: (_) {
          return Scaffold(
            body: new Center(
              child: Text('Tela não encontrada!'),
            ),
          );
        }
    );
  }
}