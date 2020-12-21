import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0.0,
        title: new  Container(
        decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
        image: AssetImage('assets/doc2.jpg'), 
    )
    ),
    ),
      ),
      drawer: Drawer(),
      body: Container(

      ),
      );
  }
}