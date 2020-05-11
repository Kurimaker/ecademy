import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ecademy/widgets/largeSquareButton.dart';
import 'package:ecademy/main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String code = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBGColor,
      appBar: AppBar(
        backgroundColor: mainAppBarColor,
        title: SvgPicture.asset(
          "assets/images/svg/logo.svg",
          width: MediaQuery.of(context).size.width * 0.55,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: GridView.count(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          crossAxisCount: 2,
          children: <Widget>[
            LargeSquareButton(
              name: "Profil",
              color: Color.fromRGBO(113, 188, 192, 25),
              icon: "assets/images/home/profil.png",
              onTap: () {
                Navigator.pushNamed(context, "/profile");
              },
              onLongPress: () {
                if (code == "1735") {
                  Navigator.pushNamed(context, "/profile/easterEgg");
                } else {
                  code = "";
                }
              },
            ),
            LargeSquareButton(
              name: "Schema",
              color: Color.fromRGBO(232, 99, 99, 25),
              icon: "assets/images/home/schema.png",
              onTap: () {
                Navigator.pushNamed(context, "/loading");
              },
              onLongPress: () {
                code = "${code}1";
              },
            ),
            LargeSquareButton(
              name: "Skola",
              color: Color.fromRGBO(196, 220, 103, 25),
              icon: "assets/images/home/skola.png",
              onTap: () {
                Navigator.pushNamed(context, "/loading");
              },
              onLongPress: () {
                  code = "${code}2";
              },
            ),
            LargeSquareButton(
              name: "Meddelanden",
              color: Color.fromRGBO(128, 190, 106, 25),
              icon: "assets/images/home/meddelanden.png",
              onTap: () {
                Navigator.pushNamed(context, "/loading");
              },
              onLongPress: () {
                code = "${code}3";
              },
            ),
            LargeSquareButton(
              name: "Händelser",
              color: Color.fromRGBO(201, 105, 168, 25),
              icon: "assets/images/home/händelser.png",
              onTap: () {
                Navigator.pushNamed(context, "/loading");
              },
              onLongPress: () {
                code = "${code}4";
              },
            ),
            LargeSquareButton(
              name: "Kurser",
              color: Color.fromRGBO(217, 150, 89, 25),
              icon: "assets/images/home/kurser.png",
              onTap: () {
                Navigator.pushNamed(context, "/courses");
              },
              onLongPress: () {
                code = "${code}5";
              },
            ),
            LargeSquareButton(
              name: "Klass",
              color: Color.fromRGBO(251, 144, 144, 25),
              icon: "assets/images/home/klass.png",
              onTap: () {
                Navigator.pushNamed(context, "/loading");
              },
              onLongPress: () {
                code = "${code}6";
              },
            ),
            LargeSquareButton(
              name: "Sök",
              color: Color.fromRGBO(122, 120, 228, 25),
              icon: "assets/images/home/sök.png",
              onTap: () {
                Navigator.pushNamed(context, "/loading");
              },
              onLongPress: () {
                code = "${code}7";
              },
            ),
          ],
        ),
      ),
    );
  }
}
