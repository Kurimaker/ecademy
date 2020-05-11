import 'package:ecademy/pages/courses/courseList/courseList.dart';
import 'package:ecademy/pages/courses/coursePages/placeholderCourse.dart';
import 'package:ecademy/pages/home/home.dart';
import 'package:ecademy/pages/loading/loading.dart';
import 'package:flutter/material.dart';
import 'package:ecademy/pages/profile/profile.dart';
import 'package:ecademy/pages/signIn/wrapper.dart';
import 'package:ecademy/pages/profile/easterEgg.dart';

Color mainBGColor = Colors.grey[100];
//Color mainBGColor = Colors.grey[900];
Color darkBGColor = Colors.grey[900];
Color mainAppBarColor = Color.fromRGBO(75, 76, 81, 100);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/signIn/wrapper",
      routes: {
        "/courses": (context) => CourseList(),
        "/loading": (context) => Loading(),
        "/home": (context) => Home(),
        "/courses/PlaceholderCourse": (context) => PlaceholderCourse(),
        "/profile": (context) => Profile(),
        "/profile/easterEgg": (context) => EasterEgg(),
        "/signIn/wrapper": (context) => Wrapper()
      },
    );
  }
}
