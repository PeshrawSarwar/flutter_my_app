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
        body: Column(
          children: [
            Container(
                child: Row(children: [
                  Container(
                    child: Text("Profile"),
                    width: 324.5,
                  ),
                  Container(
                    child: Text("Menu"),
                  )
                ]),
                color: Colors.red,
                height: 50),
            Container(
              child: Text("You will never walk alone!",
                  style: TextStyle(color: Colors.red[600], fontSize: 14)),
              height: 100,
              color: Colors.green[300],
              alignment: Alignment.center,
            )
          ],
        ));
  }
}
