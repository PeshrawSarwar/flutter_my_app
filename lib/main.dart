import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter First App'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(this.title)),
        drawer: Drawer(
            child: ListView(children: [
          Container(
            height: 50,
            child: DrawerHeader(
                // margin: EdgeInsets.all(21.0),
                decoration: BoxDecoration(color: Colors.red[100]),
                child: Container(
                    // padding: EdgeInsets.all(10.0),
                    alignment: Alignment.center,
                    child: Text("Header",
                        style: TextStyle(color: Colors.blue[600])))),
          ),
          ListTile(title: Text("One")),
          ListTile(
            title: Text("All Mail Inboxes"),
            leading: new Icon(Icons.mail),
          ),
          Divider(
            height: 0.2,
          ),
        ])),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20.0),
              child: Row(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
                  child: Container(
                    padding: const EdgeInsets.all(30.0),
                    child: Text('Hhahahah',
                        style: TextStyle(color: Colors.red[600], fontSize: 30)),
                  ),
                ),
                Container(child: Text('No you are not!'))
              ]),
              color: Colors.green,
              height: 100,
              alignment: Alignment.center,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 10),
                  borderRadius: BorderRadius.circular(34),
                  boxShadow: [
                    new BoxShadow(color: Colors.blue, offset: Offset(2.0, 4.0))
                  ]),

              // margin: EdgeInsets.all(50),
              padding: EdgeInsets.all(15),
              child: Center(
                child: Text("You will never walk alone!!!",
                    style: TextStyle(color: Colors.red[600], fontSize: 14)),
              ),
              // color: Colors.green[300],
            ),
            Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "User name",
                            hintText: "Enter Your Name"))),
                Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Password",
                            hintText: "Enter Your Password")))
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print("ababbaba");
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
        backgroundColor: Colors.white);
  }
}
