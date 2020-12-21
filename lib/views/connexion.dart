import 'package:e_sante/views/secondScreen.dart';
import 'package:flutter/material.dart';

class Connexion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: 150),
          Container(
            alignment: Alignment.center,
            child: Text('Se connecter',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 50),
          Center(
              child: new Container(
                  width: 380,
                  child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        labelText: 'Email',
                        hintText: 'Entrez votre mail',
                      )))),
          SizedBox(
            height: 30,
          ),
          Center(
              child: new Container(
                  width: 380,
                  child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        labelText: 'Mot de pase',
                        hintText: 'Entrez votre mot de passe',
                      )))),
          SizedBox(
            height: 25,
          ),
          Container(
            height: size.height * 0.06,
            width: size.width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SecondScreen()
                ));
              },
              child: Text('CONNEXION',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ),
          SizedBox(height: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Vous n"avez pas de compte?Cliquez pour',
                  style: TextStyle(color: Colors.grey)),
              SizedBox(height: 5),
              GestureDetector(
                  onTap: () {
                    //Navigator.pushNamed(context, '/');
                  },
                  child: Text("""Creer un compte""",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)))
            ],
          )
        ],
      )
          //child:Column(
          //children: [

          //],)
          ),
    );
  }
}
