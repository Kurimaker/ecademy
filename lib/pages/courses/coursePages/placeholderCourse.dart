import 'package:ecademy/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlaceholderCourse extends StatefulWidget {
  @override
  _PlaceholderCourseState createState() => _PlaceholderCourseState();
}

class _PlaceholderCourseState extends State<PlaceholderCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainAppBarColor,
        title: Text(
          "Matematik 2c",
          style: TextStyle(
              fontSize: 30,
              fontFamily: "DMSans",
              color: Color.fromRGBO(73, 178, 210, 1)),
        ),
        centerTitle: true,
      ),
      backgroundColor: mainBGColor,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: FractionallySizedBox(
                    widthFactor: 0.9,
                    child: Container(
                      color: Colors.redAccent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              "David Hedengren",
                              style:
                              TextStyle(color: Colors.black, fontSize: 25),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              "TE19A",
                              style:
                              TextStyle(color: Colors.black, fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _Button(
                    text: "Filer",
                    image: "filer.svg",
                    color: Colors.greenAccent,
                    route: "/loading",
                  ),
                  _Button(
                    text: "Diskussion",
                    image: "diskussion.svg",
                    color: Colors.blue[300],
                    route: "/loading",
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _Button(text: "Kalender", image: "kalender.svg", color: Colors.redAccent[200], route: "/loading",),
                  _Button(text: "Inlämning", image: "inlämning.svg", color: Colors.yellow[300], route: "/loading",),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  final String text;
  final Color color;
  final String image;
  final String route;

  _Button({this.text, this.color, this.image, this.route});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.30,
          color: color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "$text",
                style: TextStyle(fontFamily: "DMSans", fontSize: 25),
              ),
              Container(
                height: 120,
                child: SvgPicture.asset("assets/images/svg/$image"),
              ),
              SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
