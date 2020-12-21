 import 'package:flutter/material.dart';
import 'package:e_sante/views/Inscription.dart';
import 'package:e_sante/views/connexion.dart';

 //class HomePage extends StatelessWidget{
  //@override
  //Widget build(BuildContext context){
    //return Scaffold(
     // body: HomeScreen(),
   // );
  //}
//}

class HomeScreen extends StatefulWidget {
 HomeScreen ({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/doc1.jpg'),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.black54, BlendMode.darken)),
          ),
          child: new Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 99),
              Container(
                alignment: Alignment.center,
                child: Image(
                  image: AssetImage('assets/3lofina.png'),
                  height: 189,
                  width: 189,
                ),
              ),
              SizedBox(
                height: 69,
              ),
              new Text(""" Bienvenue sur l"Application mobile 
                  de Ivoire E-Santé""",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 21,
                  )),
              SizedBox(height: 129),
              new Container(
                  alignment: Alignment.center,
                  width: 349,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: Colors.white,
                  ),
                  child: new FlatButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Inscription()));
                      },
                      child: new Text('S"INSCRIRE',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 21,
                              fontWeight: FontWeight.bold)))),
              SizedBox(height: 27),
              new Container(
                  width: 349,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: Colors.blue,
                  ),
                  child: new FlatButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Connexion()));
                      },
                      child: new Text('SE CONNECTER',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.bold)))),
            ],
          )),
        ),
      ),
    );
  }
}

