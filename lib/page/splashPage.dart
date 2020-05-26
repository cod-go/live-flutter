import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((_){
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(64.0),
        child: new Center(
          child: new Image(image: AssetImage('image/pokeball.png'), color: Colors.white,),
        ),
      ),
    );
  }
}
