import 'package:ecademy/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EasterEgg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                Flexible(
                    child: Image.asset("assets/images/easterEgg/krish.png")),
                Flexible(
                    child: Image.asset("assets/images/easterEgg/krish.png")),
                Flexible(
                    child: Image.asset("assets/images/easterEgg/krish.png")),
                Flexible(
                    child: Image.asset("assets/images/easterEgg/krish.png")),
                Flexible(
                    child: Image.asset("assets/images/easterEgg/krish.png")),
                Flexible(
                    child: Image.asset("assets/images/easterEgg/krish.png")),
                Flexible(
                    child: Image.asset("assets/images/easterEgg/krish.png")),
                Flexible(
                    child: Image.asset("assets/images/easterEgg/krish.png")),
              ],
            ),
            Center(
              child: Text(
                "Profil",
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: "DMSans",
                    color: Color.fromRGBO(73, 178, 210, 1)),
              ),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: darkBGColor,
        elevation: 0,
      ),
      backgroundColor: darkBGColor,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Center(child: Image.asset("assets/images/easterEgg/wave.png")),
            Container(
              margin: EdgeInsets.fromLTRB(80, 50, 0, 0),
                child: Image.asset(
              "assets/images/easterEgg/dab.png",
              height: 150,
            )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 130,
                          width: 130,
                          color: Colors.green[800],
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Resultat",
                                style: TextStyle(fontSize: 25),
                              ),
                              Flexible(
                                child: Image.asset(
                                    "assets/images/easterEgg/resultat.png"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 130,
                          width: 130,
                          color: Colors.blue[300],
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Resultat",
                                style: TextStyle(fontSize: 25),
                              ),
                              Flexible(
                                child:
                                    Image.asset("assets/images/easterEgg/mail.png"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 130,
                          width: 130,
                          color: Colors.orangeAccent[100],
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Text(
                                  "    CUM\nCOUNTER",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              Flexible(
                                child: Image.asset("assets/images/easterEgg/cc.png"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: FittedBox(
                        child: Image.asset('assets/images/easterEgg/emoji.gif'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Flexible(
                child: Container(
                  height: 100,
                  child: Stack(
                    children: <Widget>[
                      Image.asset("assets/images/easterEgg/elipse.png"),
                      Center(
                        child: Text(
                          "HAMOOD HABIBI",
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Image.asset(
                  "assets/images/easterEgg/skeleton.png",
                  height: 150,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Namn: HAMOOD HABIBI",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "Skola: Erik Dahlbergsgymnasiet",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "Besökare: 24426",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "Mobil: 0739578694",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "KLASS: TE19A",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 50,
                      ),
                    ),
                    Text(
                      "REGISTERED SEX OFFENDER",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                "assets/images/easterEgg/greenMan.png",
                height: 350,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
