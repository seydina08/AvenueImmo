import 'package:agenceimmo/login.dart';
import 'package:agenceimmo/outils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Accueil extends StatefulWidget {
  Accueil({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  AccueilState createState() => AccueilState();
}

class AccueilState extends State<Accueil> {
  int tabIndex = 0;
  List<Widget>? listScreens;
  @override
  void initState() {
    super.initState();
    listScreens = [
      Outils.showArticle("Maison", "Yoff", () {
        showDialog(
            context: context,
            builder: (context) {
              return StatefulBuilder(builder: (context1, setStateForDialog) {
                return ReservationForm();
              });
            });
      }),
      Outils.showArticle("Appartement", "Ngorr", () {
        showDialog(
            context: context,
            builder: (context) {
              return StatefulBuilder(builder: (context1, setStateForDialog) {
                return ReservationForm();
              });
            });
      }),
      Outils.showArticle("Chambre", "Thies", () {
        showDialog(
            context: context,
            builder: (context) {
              return StatefulBuilder(builder: (context1, setStateForDialog) {
                return ReservationForm();
              });
            });
      }),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Outils.MyAppBarr(),
      drawer: Outils.MyDrawer(context),
      body: listScreens?[tabIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[400],
          currentIndex: tabIndex,
          onTap: (int index) {
            setState(() {
              tabIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.meeting_room),
              label: 'Chambre',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apartment_outlined),
              label: 'Appartement',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Maison',
            ),
          ]),
    );
  }

  void _handleMenuButtonPressed() {}
}

class ReservationForm extends StatefulWidget {
  ReservationForm();
  @override
  ReservationFormState createState() {
    return ReservationFormState();
  }
}

class ReservationFormState extends State<ReservationForm> {
  final _formKey = GlobalKey<FormState>();
  final controlName = TextEditingController();
  final controlPrenom = TextEditingController();
  final controlPhone = TextEditingController();
  final controlEmail = TextEditingController();
  bool _loading = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    controlName.dispose();
    controlPrenom.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: SimpleDialog(
            title: Text(
              "Reservation",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            children: <Widget>[
              Divider(
                thickness: 1,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: RichText(
                      text: TextSpan(
                          text:
                              "Une grande Maison avec 10 chambres et une piscine à l'interieur.",
                          style: TextStyle(color: Colors.black)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Prix : ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Container(
                        width: 70,
                        alignment: Alignment.center,
                        color: Colors.red,
                        child: Text(
                          "300000",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: controlName,
                        validator: (String? value) {
                          if (value!.isEmpty || value == null) {
                            return "Champ requis";
                          }
                          return null;
                        },
                        autofocus: true,
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.person,
                            size: 20,
                            color: Colors.black,
                          ),
                          labelText: "Nom",
                          contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: controlPrenom,
                      autofocus: true,
                      validator: (String? value) {
                        if (value!.isEmpty || value == null) {
                          return "Champ requis";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Prenom",
                        contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        suffixIcon: Icon(
                          Icons.person,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: controlPhone,
                      autofocus: true,
                      validator: (String? value) {
                        if (value!.isEmpty || value == null) {
                          return "Champ requis";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Telephone",
                        contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        suffixIcon: Icon(
                          Icons.phone,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: controlEmail,
                      autofocus: true,
                      validator: (String? value) {
                        if (value!.isEmpty || value == null) {
                          return "Champ requis";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Email",
                        contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        suffixIcon: Icon(
                          Icons.email,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Fermer",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.grey),
                          ),
                        ),
                      ),
                      _loading
                          ? Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 30, 0),
                              child: CircularProgressIndicator(
                                  color: Color(0xFF303030)))
                          : Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 30, 0),
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                  } else {}
                                },
                                child: Text(
                                  "Valider",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.grey),
                                ),
                              ),
                            ),
                    ],
                  )
                ],
              )
            ]));
  }
}
