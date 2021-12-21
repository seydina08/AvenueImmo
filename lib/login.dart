import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

final _formKey = GlobalKey<FormState>();
final email = TextEditingController();
final password = TextEditingController();
bool _loading = false;

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
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        "Connexion",
        style: TextStyle(
            fontSize: 35,
            color: Colors.red,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline),
      ),
      Container(
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.red,
        ),
        height: MediaQuery.of(context).size.height * 0.6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: email,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Adresse Email',
                  labelStyle: TextStyle(
                    fontFamily: 'Poppins',
                  ),
                  suffixIcon: Icon(
                    Icons.person,
                    size: 25,
                    color: Color.fromRGBO(79, 84, 103, 1),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  filled: true,
                  fillColor: Color(0xFFF8F9FA),
                ),
                style: TextStyle(
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
              child: TextFormField(
                keyboardType: TextInputType.text,
                //controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.lock,
                    size: 20,
                    color: Color.fromRGBO(79, 84, 103, 1),
                  ),
                  labelText: 'Mot de passe',
                  labelStyle: TextStyle(
                    fontFamily: 'Poppins',
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  filled: true,
                  fillColor: Color(0xFFF8F9FA),
                ),
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF303030),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text(
                'Mot de passe oublie ?',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.blue,
                  fontSize: 17,
                ),
              ),
            ),
            _loading
                ? Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: CircularProgressIndicator(
                      color: Color(0xFFF8F9FA),
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Connexion",
                        style: TextStyle(
                            color: Color(0xFF303030),
                            fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all<Size>(Size(150, 50)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xFFF8F9FA),
                        ),
                      ),
                    ),
                  )
          ],
        ),
      )
    ]));
  }
}
