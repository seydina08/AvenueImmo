import 'package:agenceimmo/outils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Offres extends StatefulWidget {
  Offres ({Key? key, this.title }) : super(key: key);

  final String ? title;

  @override
OffresState createState() => OffresState();
}

class  OffresState extends State<Offres> {

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