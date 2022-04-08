// ignore_for_file: unnecessary_new, prefer_const_constructors, use_key_in_widget_constructors

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
        primarySwatch: Colors.blue,
      ),
      home: TabExemplo(),
    );
  }
}

class TabExemplo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              // ignore: prefer_const_literals_to_create_immutables
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.directions_walk)),
              ],
            ),
            title: Text('Opções de transportes'),
          ),
          body: TabBarView(
            children: [
              new Container(
                color: Colors.deepOrangeAccent,
                child: new Center(
                  child: new Text(
                    "Primeira Guia",
                    style: TextStyle(),
                  ),
                ),
              ),
              new Container(
                color: Colors.blueGrey,
                child: new Center(
                  child: new Text(
                    "Segunda guia",
                    style: TextStyle(),
                  ),
                ),
              ),
              new Container(
                color: Colors.teal,
                child: new Center(
                  child: new Text(
                    "Terceira guia",
                    style: TextStyle(),
                  ),
                ),
              ),
              new Container(
                color: Colors.teal,
                child: new Center(
                  child: new Text(
                    "Quarta guia",
                    style: TextStyle(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
