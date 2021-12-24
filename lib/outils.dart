import 'package:agenceimmo/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Outils {
  static AppBar MyAppBarr() {
    return AppBar(
      backgroundColor: Colors.white,
      title:  Image.asset("images/logoi.png"),
      actionsIconTheme: IconThemeData(color: Colors.red, size: 20),
      centerTitle: true,
    );
  }

  static Drawer MyDrawer(context) {
    return new Drawer(
        child: Container(
      padding: EdgeInsets.zero,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.31,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25)),
                color: Colors.red,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        "images/capturef.PNG",
                      ),
                      radius: 45,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20, top: 40),
                    child: Text(
                      'Avenir Immobilier',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  )
                ],
              )),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, "/");
                  },
                  leading: Icon(Icons.home),
                  title: Text('Accueil'),
                ),
                ListTile(
                  onTap: () {  Navigator.pushNamed(context, "/Offres");},
                  leading: Icon(Icons.account_circle_rounded),
                  title: Text('Offres'),
                ),
                ListTile(
                  onTap: () {  Navigator.pushNamed(context, "/Apropos");},
                  leading: Icon(Icons.account_circle_rounded),
                  title: Text('A propos'),
                ),
                ListTile(
                  onTap: () {  Navigator.pushNamed(context, "/Contact");},
                  leading: Icon(Icons.account_circle_rounded),
                  title: Text('Contacts'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, "/LoginPage");
                  },
                  leading: Icon(Icons.account_circle_rounded),
                  title: Text('Se Connecter'),
                ),
                Spacer(),
                DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white54,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child: Text('Terms of Service | Privacy Policy'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }

  static Widget showArticle(
      String titre, String address, Function? reserver()) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
          itemCount: 12,
          itemBuilder: (context, index) => Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: ListTile(
                      leading: Image.asset("images/logoi.png"),
                      title: Text(titre),
                      subtitle: Text(address),
                      trailing: ElevatedButton(
                        onPressed: reserver,
                        child: Text("Reserver"),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.grey),
                        ),
                      ),
                      tileColor: Colors.white,
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 10,
                    indent: 10,
                  )
                ],
              )),
    );
  }
}
