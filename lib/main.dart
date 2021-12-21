import 'package:agenceimmo/login.dart';
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
      theme: ThemeData(primaryIconTheme: IconThemeData(color: Colors.red)),
      color: Colors.red,
      home: MyHomePage(title: 'Avenir Immobilier'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var column = Column(children: []);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('avenir immo',
            style: TextStyle(
                color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold)),
        actionsIconTheme: IconThemeData(color: Colors.red, size: 20),
        centerTitle: true,
      ),
      drawer: new Drawer(
          child: Container(
        padding: EdgeInsets.zero,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.31,
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
                    onTap: () {},
                    leading: Icon(Icons.home),
                    title: Text('Accueil'),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.account_circle_rounded),
                    title: Text('Offres'),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.account_circle_rounded),
                    title: Text('A propos'),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.account_circle_rounded),
                    title: Text('Contacts'),
                  ),
                  ListTile(
                    onTap: () {
                      var route = MaterialPageRoute(
                          builder: (BuildContext context) => LoginPage());

                      Navigator.push(context, route);
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
      )),

      //elevation: 6,
      // child: ListView(
      //   children: <Widget>[
      //     DrawerHeader(
      //       child: Text(' Accueil'),
      //     )
      //   ],

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'images/Cle.jpg',
              ),
              fit: BoxFit.cover),
        ),
        // child: Text("agence immobilere l'avenir"),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   backgroundColor: Colors.green,
      //   child: Icon(Icons.add),
      // ),
    );
  }

  void _handleMenuButtonPressed() {}
}
