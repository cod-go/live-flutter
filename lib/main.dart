import 'package:detonado_pokemon_live/page/splashPage.dart';
import 'package:detonado_pokemon_live/rotas/rotas.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: Rotas.gerarRotas,
      title: 'Detonado',
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21)),
      home: SplashPage()
    );
  }
}
