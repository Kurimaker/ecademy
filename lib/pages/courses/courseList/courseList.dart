import 'package:ecademy/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseList extends StatefulWidget {
  @override
  _CourseListState createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBGColor,
      appBar: AppBar(
        backgroundColor: mainAppBarColor,
        title: Text(
          "Mina Kurser",
          style: TextStyle(
              fontSize: 35,
              fontFamily: "DMSans",
              color: Color.fromRGBO(73, 178, 210, 1)),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              child: ListView(
                children: <Widget>[
                  Course(
                    name: "Matematik 2c",
                    groupName: "TE19A_MATMAT02c",
                    icon: "matematik.png",
                    color: Color.fromRGBO(78, 106, 121, 1),
                    routeToCourse: "/courses/PlaceholderCourse",
                  ),
                  Course(
                    name: "Svenska 1",
                    groupName: "TE19A_MATMAT02c",
                    icon: "svenska.png",
                    color: Color.fromRGBO(220, 113, 113, 1),
                    routeToCourse: "/courses/PlaceholderCourse",
                  ),
                  Course(
                    name: "Teknik 1",
                    groupName: "TE19A_MATMAT02c",
                    icon: "teknik.png",
                    color: Color.fromRGBO(131, 204, 155, 1),
                    routeToCourse: "/courses/PlaceholderCourse",
                  ),
                  Course(
                    name: "Engelska 5",
                    groupName: "TE19A_MATMAT02c",
                    icon: "engelska.png",
                    color: Color.fromRGBO(131, 181, 240, 1),
                    routeToCourse: "/courses/PlaceholderCourse",
                  ),
                  Course(
                    name: "Kemi 1",
                    groupName: "TE19A_MATMAT02c",
                    icon: "kemi.png",
                    color: Color.fromRGBO(209, 130, 246, 1),
                    routeToCourse: "/courses/PlaceholderCourse",
                  ),
                  Course(
                    name: "Fysik 1a",
                    groupName: "TE19A_MATMAT02c",
                    icon: "fysik.png",
                    color: Color.fromRGBO(244, 210, 120, 1),
                    routeToCourse: "/courses/PlaceholderCourse",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Course extends StatelessWidget {
  final Color color;
  final String name;
  final String icon;
  final String groupName;
  final String routeToCourse;
  Course({this.name, this.icon, this.color, this.groupName, this.routeToCourse});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
      ),
      color: this.color,
      child: ListTile(
        isThreeLine: true,
        leading: Image.asset(
          "assets/images/courseIcons/${this.icon}",
        ),
        title: Text(
          "$name",
          style: TextStyle(fontFamily: "DMSans", fontSize: 30),
        ),
        subtitle: Text(
          "$groupName\n",
          style: TextStyle(fontFamily: "DMSans", fontSize: 20),
        ),
        onTap: () {
          Navigator.pushNamed(context, this.routeToCourse);
        },
      ),
    );
  }
}
