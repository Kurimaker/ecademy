import 'package:ecademy/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:ecademy/main.dart';

import 'package:ecademy/widgets/largeSquareButton.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBGColor,
      appBar: AppBar(
        backgroundColor: mainAppBarColor,
        title: Text(
          "Jonatan Lindh",
          style: TextStyle(
              fontSize: 30,
              fontFamily: "DMSans",
              color: Color.fromRGBO(73, 178, 210, 1)),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width * 0.32,
                  color: Colors.lightBlue[100],
                  child: Center(
                    child: Container(
                      width: 80,
                      child: Image.asset("assets/images/home/profil.png"),
                    ),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.40,
//                      color: Colors.white,
                      child: FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                          child: Text(
                            "TE19A",
                            style: TextStyle(
                                fontFamily: "DMSans", color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.40,
//                      color: Colors.white,
                      child: FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                          child: Text(
                            "Erik Dahlbergsgymnasiet",
                            style: TextStyle(
                                fontFamily: "DMSans", color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LargeSquareButton(
                name: "Kontakt",
                iconIsSvg: true,
                icon: "assets/images/svg/profile/kontakt.svg",
                color: Colors.red[400],
                onTap: () {
                  Navigator.pushNamed(context, "/loading");
                },
              ),
              LargeSquareButton(
                name: "Diskussion",
                iconIsSvg: true,
                icon: "assets/images/svg/profile/diskussion.svg",
                color: Colors.blue[300],
                onTap: () {
                  Navigator.pushNamed(context, "/loading");
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LargeSquareButton(
                name: "Närvaro",
                iconIsSvg: true,
                icon: "assets/images/svg/profile/närvaro.svg",
                color: Colors.green[400],
                onTap: () {
                  Navigator.pushNamed(context, "/loading");
                },
              ),
              LargeSquareButton(
                name: "Resultat",
                iconIsSvg: true,
                icon: "assets/images/svg/profile/resultat.svg",
                color: Colors.lime[400],
                onTap: () {
                  Navigator.pushNamed(context, "/loading");
                },
              )
            ],
          ),
//          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        ],
      ),
    );
  }
}
