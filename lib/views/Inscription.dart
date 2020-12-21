import 'package:e_sante/views/secondScreen.dart';
import 'package:flutter/material.dart';

class Inscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var scrWidth = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: new Scaffold(
          backgroundColor: Colors.blue[50],
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 60),
                        Container(
                          alignment: Alignment.center,
                          child: Text('Creer un compte',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Column(
                  children: [
                    Center(
                        child: Container(
                            width: 380,
                            child: TextFormField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.person),
                                  labelText: 'Nom*',
                                  hintText: 'Entrez votre nom',
                                ),
                                onSaved: (String value) {},
                                validator: (String value) {
                                  return value.contains('@')
                                      ? 'Le nom ne doit pas contenir de symbole'
                                      : null;
                                }))),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                        child: Container(
                            width: 380,
                            child: TextFormField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.edit),
                                  labelText: 'Penom*',
                                  hintText: 'Entrez votre prenom',
                                ),
                                onSaved: (String value) {},
                                validator: (String value) {
                                  return value.contains('@')
                                      ? 'Le prenom ne doit pas contenir de symbole'
                                      : null;
                                }))),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                        child: Container(
                            width: 380,
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                icon: Icon(Icons.email),
                                labelText: 'Email*',
                                hintText: 'Entrez votre email',
                              ),
                            ))),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                        child: Container(
                            width: 380,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                icon: Icon(Icons.phone),
                                labelText: 'Telephone*',
                                hintText: 'Entrez votre numero telephone',
                              ),
                            ))),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                        child: Container(
                            width: 380,
                            child: TextFormField(
                              //keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock),
                                labelText: 'Mot de Passe*',
                                hintText: 'Entrez un mot de passe',
                              ),
                            ))),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                        child: Container(
                            width: 380,
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock),
                                labelText: 'Confirmation Mot de Passe*',
                                hintText: 'Confirmez le mot de passe',
                              ),
                            ))),
                    SizedBox(height: 30),
                    Container(
                      height: size.height * 0.06,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SecondScreen()
                          ));
                        },
                        child: Text('INCRIPTION',
                            style: TextStyle(color: Colors.blue, fontSize: 20)),
                      ),
                    ),
                    SizedBox(height: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Vous avez déjà un compte?Cliquez pour vous',
                            style: TextStyle(color: Colors.grey)),
                        SizedBox(height: 5),
                        GestureDetector(
                            onTap: () {
                              //Navigator.pushNamed(context, '/');
                            },
                            child: Text("""Connectez""",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold)))
                      ],
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
