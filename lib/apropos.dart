import 'package:agenceimmo/login.dart';
import 'package:agenceimmo/outils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Apropos extends StatefulWidget {
  Apropos({Key? key, this.title }) : super(key: key);

  final String ? title;

  @override
  AproposState createState() => AproposState();
}

class  AproposState extends State<Apropos> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: Outils.MyAppBarr(),

      body: Container(
        // child: Text("agence immobilere l'avenir"),
      ),
    );
  }

  void _handleMenuButtonPressed() {}
}
