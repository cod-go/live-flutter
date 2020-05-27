import 'package:detonado_pokemon_live/model/Jogo.dart';
import 'package:detonado_pokemon_live/page/webViewPage.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {

  MyCard({@required this.jogo});

  final Jogo jogo;

  void getJogo(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WebViewPage(link: jogo.link)
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF1D1E33),
      child: InkWell (
        onTap: () => getJogo(context),
        child: Row(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.topLeft,
              child: new Image(image: NetworkImage(jogo.images[0])),
            ),
            new Expanded(
              child: new Container(
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.center,
                child: new Text(jogo.title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold), textAlign: TextAlign.center, maxLines: 5,),
              ),
            ),
            new Container(
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.topRight,
              child: new Image(image: NetworkImage(jogo.images[1])),
            )
          ],
        ),
      ),
    );
  }
}
