import 'package:agenceimmo/accueil.dart';
import 'package:agenceimmo/apropos.dart';
import 'package:agenceimmo/contact.dart';
import 'package:agenceimmo/login.dart';
import 'package:agenceimmo/offres.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.red,
      ),
      home: Accueil(),
      routes: {
        "/Apropos": (context) {
          return Apropos();
        },
        "/Offres": (context) {
          return Offres();
        },
        "/Contact": (context) {
          return Contact();
        },
        "/LoginPage": (context) {
          return LoginPage();
        },
      },
    );
  }
}
