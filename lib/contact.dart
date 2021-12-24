import 'package:agenceimmo/outils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  Contact ({Key? key, this.title }) : super(key: key);

  final String ? title;

  @override
  ContactState createState() => ContactState();
}

class  ContactState extends State<Contact> {

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