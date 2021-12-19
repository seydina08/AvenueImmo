import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class Person extends StatefulWidget {
  final String firstname;
  Person(this.firstname) {}
  Widget build(BuildContext context) {
    return Text('$firstname');
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

@override
class _State extends State<LoginPage> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  Widget build(BuildContext context) {
    // TODO: implement build
    var appBar = AppBar(
      title: Text("login"),
    ); 
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(5),
        child: ListView(children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(2),
            child: Text(
              "Connexion",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w100,
                fontSize: 50,
              ),
            ),
          ),
          Container(
            width:5.9,
            height: 30 ,
            padding: EdgeInsets.all(2),
            
            child: TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "user name"),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(2, 2, 2, 0),
            child: TextField(
              obscureText: true,
              controller: passwordcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "password",
              ),
            ),
          ),
          FlatButton(
            onPressed: () {},
            textColor: Colors.blue,
            child: Text("mot de passe oublie"),
          ),
          Container(
            height: 30,
            width: 10,
            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text("login"),
              onPressed: () {
                print(namecontroller.text);
                print(passwordcontroller.text);
              },
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                FlatButton(
                  textColor: Colors.blue,
                  child: Text(
                    'sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
