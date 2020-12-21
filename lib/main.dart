import 'dart:async';

import 'package:flutter/material.dart';
import 'package:e_sante/views/Inscription.dart';
import 'package:e_sante/views/connexion.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:e_sante/views/home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'E-Santé',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState(){
    super.initState();
    Timer(
        Duration(
        seconds: 3),
            () => Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/3lo.png', height:100.0),
          SizedBox(height:30.0),
         SpinKitFadingCircle(color:Colors.blue),
        ],
      ),
    );
  }
}
